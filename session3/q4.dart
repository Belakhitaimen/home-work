/**4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name */
void main() {
  Map<String, List<double>> weatherData = {
    'Algeria': [30, 55, 13],
    'Egypt': [28, 50, 12],
  };
  weatherData.forEach((city, data) {
    print('Weather data for $city:');
    print('  Temperature: ${data[0]}°C');
    print('  Humidity: ${data[1]}%');
    print('  Wind Speed: ${data[2]} km/h');
  });
  String cityname = cityName();
}

String cityName() {
  String cityname;
  return cityname;
}
