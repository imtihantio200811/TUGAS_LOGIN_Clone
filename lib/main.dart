import 'package:flutter/material.dart';
import 'package:flutter_application/kalkulator.dart';
import 'package:get/get.dart';
import 'package:flutter_application/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: WelcomePage());
  }
}
