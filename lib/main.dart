import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'route.dart';
import 'screens/Page1/Page1.dart';
import 'screens/Page1/Page1Binding.dart';
import 'screens/Page2/Page2.dart';
import 'screens/Page2/Page2Binding.dart';
import 'screens/Snackbar/Snackbar.dart';
import 'screens/Snackbar/SnackbarBinding.dart';
import 'screens/home/Home.dart';
import 'screens/home/HomeBinding.dart';


void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    initialRoute: AppRoutes.home,
    getPages: [
      GetPage(
        name: AppRoutes.home,
        page: () => Home(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: AppRoutes.snackbar,
        page: () => Snackbar(),
        binding: SnackbarBinding(),
      ),
      GetPage(
        name: AppRoutes.page1,
        page: () => Page1(),
        binding: Page1Binding(),
      ),
      GetPage(
        name: AppRoutes.page2,
        page: () => Page2(),
        binding: Page2Binding(),
      ),
    ],
  ));
}

