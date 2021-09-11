import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/Page1/Page1.dart';
import 'screens/Page1/Page1Binding.dart';
import 'screens/Page2/Page2.dart';
import 'screens/Page2/Page2Binding.dart';
import 'screens/home/Home.dart';
import 'screens/home/HomeBinding.dart';


void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    initialRoute: '/home',
    getPages: [
      GetPage(
        name: '/home',
        page: () => Home(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/page1',
        page: () => Page1(),
        binding: Page1Binding(),
      ),
      GetPage(
        name: '/page2',
        page: () => Page2(),
        binding: Page2Binding(),
      ),
    ],
  ));
}

