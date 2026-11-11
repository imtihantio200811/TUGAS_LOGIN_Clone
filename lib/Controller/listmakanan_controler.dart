import 'package:flutter_application/models/list_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListmakananController extends GetxController {

  final RxList<ListModels> listModels = <ListModels>[].obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPhotos();
  }

  Future<void> fetchPhotos() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        listModels.assignAll(listModelsFromJson(response.body));
      } else {
        errorMessage.value =
            'Gagal mengambil data foto (HTTP ${response.statusCode})';
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void removePhoto(ListModels photo) {
    listModels.remove(photo);
  }
}
