import 'package:get/get.dart';

class ComfirmregControler extends GetxController {
  late String nama;
  late String alamat;
  late String no_wa;
  late String jenisKelamin;

  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    no_wa = arguments['no_wa'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}
