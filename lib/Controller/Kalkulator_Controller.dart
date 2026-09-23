import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  // method tambah kurang kali dan bagi
  void tambah(int angka1, int angka2) {
    int hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "hasil tambah",
      "hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void perkalian(int angka1, int angka2) {
    int hasilPerkalian = angka1 * angka2;
    hasil.value = hasilPerkalian;
    Get.snackbar(
      "hasil perkalian",
      "hasilnya ${hasilPerkalian}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void pembagian(int angka1, int angka2) {
    int hasilPembagian = angka1 ~/ angka2;
    hasil.value = hasilPembagian;
    Get.snackbar(
      "hasil pembagian",
      "hasilnya ${hasilPembagian}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void pengurangan(int angka1, int angka2) {
    if (angka2 != 0) {
      int hasilPengurangan = angka1 - angka2;
      hasil.value = hasilPengurangan;
      Get.snackbar(
        "hasil pengurangan",
        "hasilnya ${hasilPengurangan}",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar(
        "Error",
        "Tidak bisa mengurangi dengan angka 0",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
