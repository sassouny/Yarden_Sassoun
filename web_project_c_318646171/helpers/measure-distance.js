function measureDistance(
  { lat: fromLat, lng: fromLong },
  { lat: toLat, lng: toLng }
) {
  // generally used geo measurement function
  const R = 6378.137; // Radius of earth in KM
  const dLat = (toLat * Math.PI) / 180 - (fromLat * Math.PI) / 180;
  const dLon = (toLng * Math.PI) / 180 - (fromLong * Math.PI) / 180;
  const a =
    Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    Math.cos((fromLat * Math.PI) / 180) *
      Math.cos((toLat * Math.PI) / 180) *
      Math.sin(dLon / 2) *
      Math.sin(dLon / 2);
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  const d = R * c;
  return d * 1000; // meters
}

module.exports = { measureDistance };
