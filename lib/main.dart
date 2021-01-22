import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infintescroll_getx/app/bindings/application_binding.dart';
import 'package:infintescroll_getx/modules/home/view/home_bindings.dart';
import 'package:infintescroll_getx/modules/home/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: ApplicationBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBindings(),
          page: () => HomePage(Get.find()),
        ),
      ],
    );
  }
}
