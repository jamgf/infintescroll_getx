import 'package:get/get.dart';
import 'package:infintescroll_getx/modules/home/controller/home_controller.dart';
import 'package:infintescroll_getx/repository/user_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
