import 'package:cekongkir/presentation/dashboard/dashboard.dart';
import 'package:cekongkir/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.getPages,
      home: HomePage(),
    );
  }
}
