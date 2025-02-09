import 'package:http/http.dart' as http;
import 'package:nees_weather/data/city_weather_model.dart';

Future<CityWeatherModel> getWeather() async {
  const String url = 'https://api.hgbrasil.com/weather';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return CityWeatherModel.fromJson(response.body);
  } else {
    throw Exception();
  }
}
