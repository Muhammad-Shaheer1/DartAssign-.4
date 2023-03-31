//Create a map that associates the names of cities with their latitude and longitude coordinates. Given a starting and ending city, find the shortest distance between them (you can assume a spherical Earth).
import 'dart:math';

num distance(List<num> crd1, List<num> crd2) {
  const earthRadius = 6378;
  num latit1 = crd1[0] * pi / 180.0;
  num long1 = crd1[1] * pi / 180.0;
  num latit2 = crd2[0] * pi / 180.0;
  num long2 = crd2[1] * pi / 180.0;

  num dlat = latit2 - latit1;
  num dlong = long2 - long1;

  num sn = sin(dlat / 2) * sin(dlat / 2) +
      cos(latit1) * cos(latit2) * sin(dlong / 2) * sin(dlong / 2);
  num tn = 2 * atan2(sqrt(sn), sqrt(1 - sn));
  num distance = earthRadius * tn;
  return distance;
}

void main() {
  Map<String, List<double>> cityCoordinates = {
    "Karachi": [25.2, 66.6],
    "Lahore": [31.5, 74.0542048],
    "Quetta": [30.1800523, 66.8786047],
    "Peshawar": [33.977545, 71.2852867],
    "Islamabad": [33.6163723, 72.8059243]
  };

  String start = "Karachi";
  String end = "Lahore";

  num shortestDistance =
  distance(cityCoordinates[start]!, cityCoordinates[end]!);
  print(
      "The Shortest Distance from $start to $end is: ${shortestDistance.toStringAsFixed(3)} Km");
}