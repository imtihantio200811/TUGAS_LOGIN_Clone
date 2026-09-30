import 'package:get/get.dart';
import 'package:flutter_application/pages/comfirmreg.dart';
import 'package:flutter_application/pages/registrasion.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  //other routes can be added here

  // List of pages for GetX navigation
  static final pages = [
    GetPage(name: registration, page: () => Registrasion()),
    GetPage(name: confirmRegistration, page: () => Comfirmreg()),
  ];
}
