import 'package:flutter/material.dart';
import 'package:flutter_application/Controller/main_menu_controller.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index : mainMenuController.selectedIndex.value,
        children: mainMenuController.listPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainMenuController.changePage,
        currentIndex: mainMenuController.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label : "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.history_outlined),
          label : "History"
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label : "Profile"
          ),
          
        ]
      ),
    ));
  }
}
