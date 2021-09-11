import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/MainDrawer.dart';
import 'Page1Controller.dart';

class Page1 extends GetView<Page1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      drawer: MainDrawer(),
      body: Center(
        child: Text(controller.title),
      ),
    );
  }
}
