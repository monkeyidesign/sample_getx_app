import 'package:get/get.dart';
import 'Page2Controller.dart';

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page2Controller());
  }
}
