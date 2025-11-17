import 'package:application/constants/color_constants.dart';
import 'package:application/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Baloo',
        colorScheme: ColorScheme.fromSeed(
          seedColor: kAccentColor,
          // background: kBackgroundColor,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
        useMaterial3: true, // Optionnel mais conseillé
      ),
      home: HomeScreen(),
    );
  }
}
