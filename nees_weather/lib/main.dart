import 'package:flutter/material.dart';
import 'package:nees_weather/screens/error_screen.dart';
import 'package:nees_weather/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEES Weather',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/errorScreen': (context) => const ErrorScreen(),
      },
    );
  }
}
