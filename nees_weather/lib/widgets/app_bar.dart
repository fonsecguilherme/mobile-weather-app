import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String cityName;

  const AppBarWidget({
    required this.cityName,
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
          iconEnabledColor: Colors.white,
          items: [
            DropdownMenuItem(
              value: cityName,
              child: Text(
                cityName,
              ),
            ),
            const DropdownMenuItem(
              value: 'Maceió',
              child: Text(
                'Maceió',
              ),
            ),
          ],
          value: cityName,
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
