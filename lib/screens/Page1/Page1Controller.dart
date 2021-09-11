import 'package:get/get.dart';

class Page1Controller extends GetxController {
  final title = 'Page 1';

  @override
  void onInit() {
    print('>>> Page1Controller init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> Page1Controller ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> Page1Controller close');
    super.onClose();
  }
}
