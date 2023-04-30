import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nees_weather/data/city_weather_model.dart';
import 'package:nees_weather/helpers/functions.dart';

class AppBarWidget extends StatelessWidget {
  final Results values;

  const AppBarWidget({
    required this.values,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.location_on_outlined),
      title: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: Functions.dropDownBackgroundColor(values),
          iconEnabledColor: Colors.white,
          items: [
            DropdownMenuItem(
              value: values.cityName,
              child: Text(
                values.cityName,
              ),
            ),
            const DropdownMenuItem(
              value: 'Maceió',
              child: Text(
                'Maceió',
              ),
            ),
          ],
          value: values.cityName,
          onChanged: (val) {},
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Icon(CupertinoIcons.bell),
        ),
      ],
    );
  }
}
