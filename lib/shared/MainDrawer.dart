import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../route.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            tileColor: Get.currentRoute == AppRoutes.home ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed(AppRoutes.home);
            },
          ),
          ListTile(
            title: Text('Snackbar'),
            tileColor: Get.currentRoute == AppRoutes.snackbar ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(AppRoutes.snackbar);
            },
          ),
          ListTile(
            title: Text('Item 1'),
            tileColor: Get.currentRoute == AppRoutes.page1 ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(AppRoutes.page1);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            tileColor: Get.currentRoute == AppRoutes.page2 ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(AppRoutes.page2);
            },
          ),
        ],
      ),
    );
  }
}
