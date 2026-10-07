import 'package:get/get.dart';
import 'package:flutter_application/models/makanan_model.dart';

class DetailmakananController extends GetxController {
  late String nama;
  late String harga;
  late String deskripsi;
  late String gambar;
  late String kategori;
  late int rating;

  @override
  void onInit() {
    super.onInit();

    final MakananModel arguments = Get.arguments;
    nama = arguments.nama;
    harga = arguments.harga;
    deskripsi = arguments.deskripsi;
    gambar = arguments.gambar;
    kategori = arguments.kategori;
    rating = arguments.rating;
  }
}
