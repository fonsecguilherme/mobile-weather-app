import 'package:flutter/cupertino.dart';
import 'package:nees_weather/commons/app_colors.dart';
import 'package:nees_weather/commons/app_strings.dart';
import 'package:nees_weather/data/city_weather_model.dart';

class NextForecastWidget extends StatelessWidget {
  final List<Forecast>? forecast;

  const NextForecastWidget({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 48, right: 48, bottom: 18),
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
            _containerHeader(),
            _nextDaysForecasts(),
          ],
        ),
      ),
    );
  }

  Widget _containerHeader() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              AppStrings.nextForecast,
              style: TextStyle(
                fontSize: 20,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              CupertinoIcons.calendar,
              color: AppColors.white,
            ),
          ],
        ),
      );

  Widget _nextDaysForecasts() {
    return SizedBox(
      height: 510,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        itemCount: forecast!.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                forecast![index].weekday,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  _wheatherImage(forecast![index].condition),
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Text(
                      '${forecast![index].max}°',
                      style: const TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      ' ${forecast![index].min}°',
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _wheatherImage(String condition) {
    if (condition == 'rain') {
      return 'assets/images/icons/rainDrops.png';
    } else if (condition == 'clear_day') {
      return 'assets/images/header_photos/sunny.png';
    } else {
      return 'assets/images/icons/tempest.png';
    }
  }
}
