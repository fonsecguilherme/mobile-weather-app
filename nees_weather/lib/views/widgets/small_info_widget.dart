import 'package:flutter/material.dart';
import 'package:nees_weather/commons/app_colors.dart';
import 'package:nees_weather/data/city_weather_model.dart';

class SmallInfoWidget extends StatelessWidget {
  final Results value;

  const SmallInfoWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 48, right: 48),
      child: Container(
        height: 47,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: AppColors.black.withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _item(
                value: '${value.rain.toInt().toString()}%',
                imagePath: 'assets/images/icons/rainIcon.png'),
            _item(
                value: '${value.humidity.toString()}%',
                imagePath: 'assets/images/icons/humidityIcon.png'),
            _item(
                value: value.windSpeedy.toString(),
                imagePath: 'assets/images/icons/windIcon.png'),
          ],
        ),
      ),
    );
  }

  Widget _item({
    required String value,
    required String imagePath,
  }) =>
      SizedBox(
        child: Row(
          children: [
            Image.asset(imagePath),
            Text(
              value,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
}
