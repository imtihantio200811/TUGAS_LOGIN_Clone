import 'package:flutter/material.dart';
import 'package:flutter_application/Controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text("My App")),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                selected: menuDrawerController.selectedIndex.value == 0,
                onTap: () {
                  menuDrawerController.changePage(0);
                  Get.back();
                },
              ),
              ListTile(
                title: Text('History'),
                leading: Icon(Icons.history),
                selected: menuDrawerController.selectedIndex.value == 1,
                onTap: () {
                  menuDrawerController.changePage(1);
                  Get.back();
                },
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                selected: menuDrawerController.selectedIndex.value == 2,
                onTap: () {
                  menuDrawerController.changePage(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.pages,
        ),
      ),
    );
  }
}