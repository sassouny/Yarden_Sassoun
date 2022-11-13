DROP DATABASE kangoo; /*to make sure doesn't exist before creating*/
CREATE DATABASE `kangoo`;

CREATE TABLE `kangoo`.`CENTERS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `center_name` VARCHAR(100) NULL,
  `description` VARCHAR(645) NULL,
  `phone` VARCHAR(45) NULL,
  `street` VARCHAR(145) NULL,
  `building_number` VARCHAR(45) NULL,
  `city` VARCHAR(145) NULL,
  `workout_days` VARCHAR(145) NULL,
  `workout_hours` VARCHAR(45) NULL,
  `latitude` VARCHAR(45) NULL,
  `longitude` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Studio T', 'By Gal Cnaan', '(052)-2689749', 'Merkaz Ba''alei Melaha St', 16, 'Tel Aviv', 'both', 'all day', 32.07009408, 34.77345982);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Get Wild Studio', 'אנחנו GET WILD! ואנחנו הסטודיו הטוב והמגוון ביותר ברחובות והסביבה! 2 מתחמי אימונים מאובזרים, מערכת מגוונת וצוות מקצועי', '(052)-7528545', 'מתחם בית חלומותי לשעבר', NULL, 'Givat Brenner', 'both', 'all day', 31.86651195, 34.8047387);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Yarden Dvash Fitness & Studio', 'סטודיו בוטיק לאימוני כושר לנשים, תכנית הרזייה וחיטוב', '(050)-5274783', 'Tfuzot Israel', 6, 'Givataym', 'both', 'all day', 32.0600424, 34.81523358);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Aviv Marco Fitness', 'סטודיו אימונים אישיים/קבוצתיים', '(052)-7780909', 'Maarav Risho', NULL, 'Rishon Letzio', 'both', 'all day', 31.97325626, 34.79247982);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Gold Studio', 'סטודיו לאימוני כושר לנשים', '(053)-2779696', 'Eli Cohe', 37, 'Ashkelo', 'both', 'all day', 31.67017728, 34.57908105);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Eva Sport', 'סטודיו לאימונים פונקציונליים וקאנגו!', '(074)-7648506', 'Simtat Palteri', 6, 'Hadera', 'both', 'all day', 32.43707214, 34.92082004);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Lisa Studio', 'פיטנס, תרפיה במים, קאנגו', '(052)-4315301', 'Beit Hashitta', NULL, 'Hazafo', 'both', 'all day', 32.55222555, 35.44069412);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Shiran Buzaglo Fitness', 'סטודיו לנשים', '(053)-7664342', 'Lehavit St', NULL, 'Eilat', 'both', 'all day', 29.55807996, 34.93730351);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Top Studio', 'מתחם לאימוני כושר', '(050)-4914441', 'Abir Yaakov St', NULL, 'Gan Yavne', 'weekdays', 'mornings', 31.78289686, 34.70805873);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Tal Zekcer', 'מאמנת כושר אישית', '(050)-5320010', 'Hadekel St', 10, 'Kiryat Gat', 'weekdays', 'evenings', 31.60339646, 34.76735378);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('LadyFit Studio', 'סטודיו לנשים חזקות', '(052)-5308658', 'Simha Holzberg', 16, 'Ramla', 'weekdays', 'evenings', 31.93353523, 34.85397481);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Studio Chen Malca', 'היפהופ ופיטנס', '(03)-5550599', 'Ben Gurion St', 99, 'Bat Yam', 'weekdays', 'evenings', 32.0168569, 34.73893533);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Wonder Studio', 'אימונים, סדנאות, תזונה והרצאות', '(050)-7917711', 'Pinhas Balkani St', 6, 'Netanya', 'weekdays', 'evenings', 32.31286213, 34.87410594);
INSERT `kangoo`.CENTERS (center_name, description, phone, street, building_number, city, workout_days, workout_hours, latitude, longitude) VALUES ('Kangoo Jumps Beer Sheva', 'אימון קאנגו ג''אמפס מאת יובל ששון', '(054)-2291056', 'David Ben Gurion Blvd', 11, 'Beer Sheva', 'weekdays', 'evenings', 31.26203717, 34.80713963);

CREATE TABLE `kangoo`.`INTERESTED` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `phone` VARCHAR(45) NULL,
  `center_id` INT NULL,
  `full_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
 CREATE TABLE `kangoo`.`SEARCHES` (
  `email` VARCHAR(50) NOT NULL,
  `dt` datetime NOT NULL,
  CONSTRAINT PK_Searches PRIMARY KEY(email, dt));


