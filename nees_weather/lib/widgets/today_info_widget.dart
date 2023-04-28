import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nees_weather/commons/app_colors.dart';
import 'package:nees_weather/commons/app_strings.dart';
import 'package:nees_weather/data/city_weather_model.dart';

class TodayInfoWidget extends StatelessWidget {
  final Results value;

  const TodayInfoWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 48, right: 48),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: AppColors.black.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppStrings.today,
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _formattedDate(value.date),
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 20),
              child: SizedBox(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _todayInformation(AppStrings.sunrise, value.sunrise),
                  _todayInformation(AppStrings.sunset, value.sunset),
                  _todayInformation(AppStrings.time, value.time),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget _todayInformation(String text, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: _style(),
          ),
          Text(
            value,
            style: _style(),
          )
        ],
      ),
    );
  }

  TextStyle _style() => const TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      );

  String _formattedDate(DateTime date) {
    final DateFormat formatter = DateFormat.MMMd();
    final String formatted = formatter.format(date);
    return formatted;
  }
}
