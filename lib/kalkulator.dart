import 'package:flutter/material.dart';
import 'package:flutter_application/components/textFailed.dart';
import 'package:flutter_application/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("kalkulator")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
            SizedBox(height: 10),
            CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.perkalian(angka1, angka2);
                  },
                  child: Text("X"),
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.pembagian(angka1, angka2);
                  },
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.pengurangan(angka1, angka2);
                  },
                  child: Text("-"),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                txtAngka1.clear();
                txtAngka2.clear();
                controller.hasil.value = 0;
              },
              child: Text("Clear"),
            ),
            SizedBox(height: 20),
            Obx(
              () => Text(
                controller.hasil.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
