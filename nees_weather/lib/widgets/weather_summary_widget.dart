import 'package:flutter/material.dart';
import 'package:nees_weather/commons/app_colors.dart';
import 'package:nees_weather/data/city_weather_model.dart';

class WeatherSummaryWidget extends StatelessWidget {
  final List<Forecast> forecast;
  final Results value;

  const WeatherSummaryWidget({
    super.key,
    required this.forecast,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            SizedBox(
              height: 187,
              width: 284,
              child: Image.asset('assets/images/header_photos/sunny.png'),
            ),
            Text(
              value.temp.toString(),
              style: const TextStyle(
                fontSize: 48,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value.description,
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Max.:${forecast.first.max}  Min.:${forecast.first.min}',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      );
}
