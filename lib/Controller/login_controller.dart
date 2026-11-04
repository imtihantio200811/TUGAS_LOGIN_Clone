import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  // Deklarasi TextEditingController
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  // Variabel reaktif untuk loading
  var isLoading = false.obs;

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
        // Set loading menjadi true
        isLoading.value = true;

        // URL Endpoint API Login (Sesuaikan dengan URL API backend Anda / Postman)
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        // Request HTTP POST dengan Body
        final response = await http.post(
          url,
          body: {
            'username': txtUsername.text.toString(),
            'password': txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          // kita ambil jsonnya message pindah tampilan ke main
          // contoh json yang paling sederhana, next pertemuan j
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("berhasil", data['message']);
            Get.offNamed(Routes.mainMenuPage);
          } else {
            Get.snackbar("gagal", data['message']);
          }
        } else {
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
