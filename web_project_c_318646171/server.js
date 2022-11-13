const express = require("express");
const { query } = require("./dbConnection");
const { measureDistance } = require("./helpers/measure-distance");
const app = express();

app.set("view engine", "ejs");
app.engine("html", require("ejs").renderFile);

app.use(express.urlencoded({ extended: true }));

app.get("/", function (req, res) {
  res.render("home.html");
});
app.use("/static", express.static(__dirname + "/static"));

app.post("/search", async (req, res) => {
  const form = req.body;
  console.log("form", form);

  sqlFormatDate = new Date().toISOString().slice(0, 19).replace('T', ' ');
  const sql1 = `INSERT INTO SEARCHES (email, dt) VALUES (?, ?)`;
  const [rows1] = await query(sql1, [form.email, sqlFormatDate]);

  const sql = `SELECT * FROM CENTERS WHERE workout_days like ? AND workout_hours like ?`;
  const [rows, fields] = await query(sql, [
    form.days === "any" ? "%%" : form.days,
    form.hours == "any" ? "%%" : form.hours,
  ]);
  console.log(rows);
  rows.forEach((row) => {
    const distance = measureDistance(
      { lat: form.latitude, lng: form.longitude },
      { lat: row.latitude, lng: row.longitude }
    );
    row.distance = distance;
  });

  if (rows.length === 0) {
    res.render("no-results.html");
    return;
  }
  const nearestLocation = rows.reduce(function (prev, current) {
    return prev.distance < current.distance ? prev : current;
  });

  res.render("search-result.html", { studio: nearestLocation });
});

app.get("/centers/:id", async (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM CENTERS WHERE id = ?`;
  const [rows, fields] = await query(sql, [id]);
  const studio = rows[0];
  res.render("center.html", { studio });
});

app.get("/contact", async (req, res) => {
  const sql = `SELECT * FROM CENTERS`;
  const [rows] = await query(sql);

  res.render("contact.html", { studios: rows });
});

app.post("/contact", async (req, res) => {
  const form = req.body;
  console.log("form", form);
  const sql = `INSERT INTO INTERESTED (full_name, phone, center_id) VALUES (?, ?, ?)`;
  const [rows] = await query(sql, [form.fullname, form.phone, form.centerId]);
  res.render("thank-you.html");
});

app.listen(3000, function () {
  console.log("Server started on port 3000: http://localhost:3000");
});
