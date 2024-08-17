import 'weather_api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart main.dart <city>');
    return;
  }
  final city = arguments.first;
  final api = WeatherApiClient();

  try {
    final weather = await api.getWeather(city);
    print(weather);
  } catch (e) {
    print(e);
  }
}
