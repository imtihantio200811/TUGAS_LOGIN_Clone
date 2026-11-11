import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';
import 'package:get/get.dart';
import '../models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  // Deklarasi TextEditingController
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  // Variabel reaktif untuk loading
  var isLoading = false.obs;

  var loginModel = Rxn<LoginModels>();

  // Method Login
  void login() async {
    // Validasi input kosong
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar(
        "Error",
        "Username dan password harus terisi",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      try {
        
        isLoading.value = true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString()
        });

        isLoading.value = false;
        if(response.statusCode == 200){
          // kita ambil jsonnya message pindah tampilan ke main menu
          // contoh json yang paling sederhana, next pertemuan json yang kompleks
          loginModel.value = loginModelsFromJson(response.body);
          
          if(loginModel.value?.status == true){
            Get.snackbar("berhasil", loginModel.value!.message.toString());
            // pindah ke main menu
            // get.off karena login nya di close
            // carilah satu free api (sport db) yang return nya adalah json array
            // di push ke git jam 10.30 
            Get.offNamed(Routes.mainMenuPage);
          }else{
            Get.snackbar("gagal", loginModel.value!.message.toString());
          }

        }else{
          Get.snackbar("gagal", "cek internet connection");
        }



      } catch (e) {
        // Tangkap error jika terjadi crash / koneksi terputus
        isLoading.value = false;
        print(e.toString());
        Get.snackbar("Error", e.toString());
      }
    }
  }
}
