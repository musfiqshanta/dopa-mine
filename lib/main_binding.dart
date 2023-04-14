import 'package:dopa_mine/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }
}
