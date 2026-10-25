import 'package:flutter/material.dart';
import 'package:flutter_application/Menu/history.dart';
import 'package:flutter_application/Menu/home.dart';
import 'package:flutter_application/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  //list page yang ada dalam menu bottom 
  List<Widget> listPage = [Home(), History(), Profile()];
}
