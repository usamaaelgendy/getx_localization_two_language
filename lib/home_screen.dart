import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_localization/controller/app_language.dart';

/// local saved data
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedLang = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Directionality(
          textDirection:
              _selectedLang == 'en' ? TextDirection.ltr : TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "login".tr,
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "SignUp".tr,
                style: TextStyle(fontSize: 32),
              ),
              GetBuilder<AppLanguage>(
                init: AppLanguage(),
                builder: (controller) {
                  return DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text("en"),
                        value: 'en',
                      ),
                      DropdownMenuItem(
                        child: Text("ar"),
                        value: 'ar',
                      ),
                    ],
                    value: controller.appLocale,
                    onChanged: (value) {
                      controller.changeLanguage(value);
                      Get.updateLocale(Locale(value));
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
