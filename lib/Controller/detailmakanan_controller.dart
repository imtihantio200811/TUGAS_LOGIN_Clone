import 'package:get/get.dart';
import 'package:flutter_application/models/list_model.dart';

class DetailmakananController extends GetxController {
  late ListModels photo;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    photo = arguments;
  }
}
