import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/MainDrawer.dart';
import 'SnackbarController.dart';

class Snackbar extends GetView<SnackbarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar')),
      drawer: MainDrawer(),
      body: Center(
        child: Text(controller.title),
      ),
    );
  }
}
