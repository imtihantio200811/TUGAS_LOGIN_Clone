import 'package:flutter_application/Menu/history.dart';
import 'package:flutter_application/Menu/home.dart';
import 'package:flutter_application/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  
  void changePage(int index) {
    selectedIndex.value = index;
  }
  
  // list of page inside menu
  List<Widget> pages = [Home(), History(), Profile()];
}