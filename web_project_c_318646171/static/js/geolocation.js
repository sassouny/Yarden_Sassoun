const successCallback = (position) => {
  const latitude = position.coords.latitude;
  const longitude = position.coords.longitude;

  document.getElementById("latitude").value = latitude;
  document.getElementById("longitude").value = longitude;
  const submitButton = document.getElementById("submit");
  submitButton.innerText = "Search";
  submitButton.disabled = false;
};

const errorCallback = (error) => {
  console.error(error);
};

const position = navigator.geolocation.getCurrentPosition(
  successCallback,
  errorCallback
);
