import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio(
        BaseOptions(baseUrl: 'https://5f933a5f8742070016da67ea.mockapi.io/')));
  }
}
