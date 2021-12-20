import 'package:get/get.dart';
import 'package:perpus_jateng_app/controller/controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageViewController());
    Get.lazyPut(() => NetworkController());
  }
}