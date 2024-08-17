import 'dart:convert';
import 'package:dotenv/dotenv.dart';
import 'package:http/http.dart' as http;
import 'weather.dart';


class WeatherApiClient {
  static const baseUrl = 'https://api.openweathermap.org/data/2.5/weather?';
  final env = DotEnv(includePlatformEnvironment: true)..load();

  Future<Weather> getWeather(String city) async {
    final apiKey = env['WEATHER_API_KEY']!;
    final locationUrl = Uri.parse('${baseUrl}q=$city&appid=$apiKey');
    final locationResponse = await http.get(locationUrl);

    if (locationResponse.statusCode != 200) {
      throw Exception('Error getting weather data for city: $city');
    }

    final locationJson = jsonDecode(locationResponse.body) as Map<String,dynamic>;
    if(locationJson.isEmpty){
      throw Exception('No location found for: $city');
    }

    return Weather.fromJson(locationJson);
  }
}
