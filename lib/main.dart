import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/screens/home.dart';
import 'package:my_personal_portfolio/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}
