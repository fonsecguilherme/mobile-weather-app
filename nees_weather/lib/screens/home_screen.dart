import 'package:flutter/material.dart';
import 'package:nees_weather/data/city_weather_model.dart';
import 'package:nees_weather/data/weather_api_repository.dart';
import 'package:nees_weather/helpers/functions.dart';
import 'package:nees_weather/widgets/app_bar.dart';
import 'package:nees_weather/widgets/next_forecast_widget.dart';
import 'package:nees_weather/widgets/small_info_widget.dart';
import 'package:nees_weather/widgets/today_info_widget.dart';
import 'package:nees_weather/widgets/weather_summary_widget.dart';

class HomeScreen extends StatefulWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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
              return _body(snapshot);
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Temos erro'),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      );

  Widget _body(AsyncSnapshot<CityWeatherModel> snapshot) {
    Results value = snapshot.data!.results;
    return Scaffold(
      backgroundColor: Functions.backgroundColorSelector(value),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(values: value),
      ),
      body: ListView(
        children: [
          WeatherSummaryWidget(
              forecast: snapshot.data!.results.forecast, value: value),
          SmallInfoWidget(
            value: value,
          ),
          TodayInfoWidget(value: value),
          NextForecastWidget(forecast: snapshot.data!.results.forecast),
        ],
      ),
    );
  }
}
