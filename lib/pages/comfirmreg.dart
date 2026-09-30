import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/Controller/comfirmreg_controler.dart';
import 'package:get/get.dart';

class Comfirmreg extends StatelessWidget {
  Comfirmreg({super.key});

  final controller = Get.put(ComfirmregControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Nama: " + controller.nama +
                    "\nAlamat: " + controller.alamat +
                    "\nJenis Kelamin: " + controller.jenisKelamin +
                    "\nNo WA: " + controller.no_wa,
                    style: const TextStyle(
                      fontSize: 18, 
                      color: Colors.black87,
                      height: 1.5, // Spasi antar baris agar lebih nyaman dibaca
                    ),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Oke",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}