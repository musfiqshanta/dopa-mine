import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement GameController

  final count = 0.obs;
  late TabController tabController;
  int selectedIndex = 0;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
