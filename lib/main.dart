import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_localization/home_screen.dart';
import 'package:get_localization/translations.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      home: HomeScreen(),
    );
  }
}
