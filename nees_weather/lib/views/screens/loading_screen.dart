import 'package:flutter/material.dart';
import 'package:nees_weather/commons/app_strings.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            AppStrings.loadingScreenMessage,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
