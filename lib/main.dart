import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we1_app/pages/weather_home_page.dart';
import 'package:we1_app/widgets/location.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, systemNavigationBarColor: Colors.transparent));
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        home: WeatherHomePage()
    );
  }
}