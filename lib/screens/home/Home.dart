import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/MainDrawer.dart';
import 'HomeController.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("APP DRAWER")),
      body: Center(
        child: Text('Home'),
      ),
      drawer: MainDrawer(),
    );
  }
}
