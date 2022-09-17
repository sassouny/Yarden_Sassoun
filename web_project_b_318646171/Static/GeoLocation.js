const successCallback = (position) => {
    console.log(position)
}

const errorCallback = (error) => {
    console.error(error)
}


navigator.geolocation.getCurrentPosition(successCallback, errorCallback);

// to use for server side:
let x = position.coords.latitude
let y = position.coords.longitude
