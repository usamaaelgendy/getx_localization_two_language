import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_localization/home_screen.dart';
import 'package:get_localization/translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
    );
  }
}
