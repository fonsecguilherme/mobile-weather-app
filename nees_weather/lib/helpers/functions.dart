import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nees_weather/commons/app_colors.dart';
import 'package:nees_weather/commons/app_strings.dart';
import 'package:nees_weather/data/city_weather_model.dart';

class Functions {
  static String windDirectionConversion(int value) {
    if (value >= 0 && value <= 22) {
      return AppStrings.north;
    } else if (value >= 23 && value <= 67) {
      return AppStrings.northeast;
    } else if (value >= 68 && value < 112) {
      return AppStrings.east;
    } else if (value >= 113 && value <= 157) {
      return AppStrings.southeast;
    } else if (value >= 158 && value <= 202) {
      return AppStrings.south;
    } else if (value >= 203 && value <= 247) {
      return AppStrings.southwest;
    } else if (value >= 248 && value <= 292) {
      return AppStrings.west;
    } else if (value >= 293 && value <= 337) {
      return AppStrings.northwest;
    } else {
      return AppStrings.north;
    }
  }

  static String formattedDate(DateTime date) {
    final DateFormat formatter = DateFormat.MMMd();
    final String formatted = formatter.format(date);
    return formatted;
  }

  static Color dropDownBackgroundColor(Results value) {
    if (value.currently == 'dia') {
      return AppColors.dropdownButtonLight;
    } else {
      return AppColors.backgroundDarkBlue;
    }
  }

   static Color backgroundColorSelector(Results value) {
    if (value.currently == 'dia') {
      return AppColors.backgroundBlue;
    } else {
      return AppColors.backgroundDarkBlue;
    }
  }

}
