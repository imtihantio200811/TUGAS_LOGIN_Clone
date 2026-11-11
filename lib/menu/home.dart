import 'package:flutter/material.dart';
import 'package:flutter_application/Controller/home_makanan_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final homeMakananController = Get.put(HomeMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeMakananController.makananList.length,
              itemBuilder: (context, index) {
                final makanan = homeMakananController.makananList[index];

                return InkWell(
                  onTap: () {
                    // pindah ke detail page
                    // menggunakan Get.to
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: 280,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          makanan.nama,
                          style: TextStyle(fontSize: 40),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.harga,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
