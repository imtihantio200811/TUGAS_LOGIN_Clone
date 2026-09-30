import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/components/costum_dropdownList.dart';
import 'package:flutter_application/components/textFailed.dart';
import 'package:flutter_application/routes.dart';
import 'package:get/get.dart';

class Registrasion extends StatelessWidget {
  const Registrasion({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtalamat = TextEditingController();
    TextEditingController txtnowa = TextEditingController();
    TextEditingController txtnJenisKelamin = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              CustomTextfield(txtController: txtNama, myHint: "input name"),
              const SizedBox(height: 16),
              CustomDropdown(controller: txtnJenisKelamin, hint: "Pilih Jenis Kelamin"),
              const SizedBox(height: 16),
              CustomTextfield(txtController: txtalamat, myHint: "input alamat"),
              const SizedBox(height: 16),
              CustomTextfield(txtController: txtnowa, myHint: "input no wa"),
              const SizedBox(height: 32),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // get to untuk pindah
                    // argument untuk kirim data
                    // get off
                    Get.toNamed(
                      Routes.confirmRegistration,
                      arguments: {
                        'name': txtNama.text.toString(),
                        'alamat': txtalamat.text.toString(),
                        'no_wa': txtnowa.text.toString(),
                        'jenis_kelamin': txtnJenisKelamin.text.toString(),
                      },
                    );
                  },
                  child: const Text(
                    "Send",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}