import 'package:dopa_mine/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/signIn/views/sign_in_view.dart';
import 'app/modules/signUp/views/sign_up_view.dart';

class MainController extends GetxController {
  Widget child = HomeView();

  RxInt data = 0.obs;

  void x() {
    data++;
  }
}
