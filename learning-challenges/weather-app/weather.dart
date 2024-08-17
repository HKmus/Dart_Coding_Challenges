class Weather {
  Weather({
    required this.city,
    required this.weatherState,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.humidity,
  });

  final String city;
  final String weatherState;
  final int humidity;
  //all temperatures are in kelvin
  final double temp;
  final double maxTemp;
  final double minTemp;

  String _kelvinToCelsius(double temp) => (temp - 273.15).toStringAsFixed(0);

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        city: json['name'],
        weatherState: json['weather'][0]['main'],
        temp: json['main']['temp'],
        maxTemp: json['main']['temp_max'],
        minTemp: json['main']['temp_min'],
        humidity: json['main']['humidity'],
      );

  @override
  String toString() => '''
City: $city
Current Temp: ${_kelvinToCelsius(temp)}°C
Condition: $weatherState
Daily Max/Min: ${_kelvinToCelsius(maxTemp)}/${_kelvinToCelsius(minTemp)}°C
Humidity: $humidity%''';
}
