import 'package:get/get.dart';

class SnackbarController extends GetxController {
  final title = 'Snackbar';

  @override
  void onInit() {
    print('>>> Snackbar Controller init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> Snackbar Controller ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> Snackbar Controller close');
    super.onClose();
  }
}
