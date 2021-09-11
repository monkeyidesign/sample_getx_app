import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/MainDrawer.dart';
import 'Page2Controller.dart';

class Page2 extends GetView<Page2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      drawer: MainDrawer(),
      body: Center(
        child: Text(controller.title),
      ),
    );
  }
}
