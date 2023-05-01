import 'package:flutter/material.dart';
import 'package:nees_weather/data/city_weather_model.dart';
import 'package:nees_weather/helpers/functions.dart';
import 'package:nees_weather/widgets/app_bar.dart';
import 'package:nees_weather/widgets/next_forecast_widget.dart';
import 'package:nees_weather/widgets/small_info_widget.dart';
import 'package:nees_weather/widgets/today_info_widget.dart';
import 'package:nees_weather/widgets/weather_summary_widget.dart';

class DataScreen extends StatelessWidget {
  final AsyncSnapshot<CityWeatherModel> snapshot;

  const DataScreen({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
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
