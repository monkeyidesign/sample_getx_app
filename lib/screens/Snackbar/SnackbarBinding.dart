import 'package:get/get.dart';
import 'SnackbarController.dart';

class SnackbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SnackbarController());
  }
}
