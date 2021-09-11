import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/AppColors.dart';
import '../../shared/MainDrawer.dart';
import 'SnackbarController.dart';
import 'package:url_launcher/url_launcher.dart';

class Snackbar extends GetView<SnackbarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar')),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(controller.title),
            TextButton(
              onPressed: () {
                Get.snackbar(
                  'Snackbar Title',
                  'Your Message!',
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: AppColorSets.primaryColor,
                  margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  duration: Duration(minutes: 1),
                  mainButton: TextButton.icon(
                    label: Text('monkeyidesign.com'),
                    icon: Icon(Icons.web),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: _launchURL,
                  ),
                  icon: Icon(
                    Icons.info,
                    color: AppColorSets.secondaryColor,
                  ),
                  shouldIconPulse: false,
                  overlayBlur: 5
                );
              },
              child: Text("Show Snackbar"),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.monkeyidesign.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
