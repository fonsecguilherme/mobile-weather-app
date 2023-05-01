import 'package:flutter/material.dart';
import 'package:nees_weather/data/city_weather_model.dart';
import 'package:nees_weather/data/weather_api_repository.dart';
import 'package:nees_weather/screens/data_screen.dart';
import 'package:nees_weather/screens/error_screen.dart';
import 'package:nees_weather/screens/loading_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreene();
}

class _HomeScreene extends State<HomeScreen> {
  late Future<CityWeatherModel> city;

  Future<CityWeatherModel> getCitytWeather() {
    city = getWeather();
    return city;
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: FutureBuilder<CityWeatherModel>(
          future: getCitytWeather(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return DataScreen(snapshot: snapshot); //_body(snapshot);
            } else if (snapshot.hasError) {
              return const ErrorScreen();
            } else {
              return const LoadingScreen();
            }
          },
        ),
      );
}
