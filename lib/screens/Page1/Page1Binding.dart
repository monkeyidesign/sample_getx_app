import 'package:get/get.dart';
import 'Page1Controller.dart';

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page1Controller());
  }
}
