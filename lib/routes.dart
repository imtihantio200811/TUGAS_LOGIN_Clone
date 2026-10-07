import 'package:get/get.dart';
import 'package:flutter_application/pages/comfirmreg.dart';
import 'package:flutter_application/pages/registrasion.dart';
import 'package:flutter_application/pages/listmakanan_page.dart';
import 'package:flutter_application/pages/detail_page.dart';

class Routes {
  static const String listmakanan = "/listmakanan";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String detail = "/detail";
  //other routes can be added here

  // List of pages for GetX navigation
  static final pages = [
    GetPage(name: listmakanan, page: () => Listmakanan()),
    GetPage(name: registration, page: () => Registrasion()),
    GetPage(name: confirmRegistration, page: () => Comfirmreg()),
    GetPage(name: detail, page: () => DetailPage()),
  ];
}
