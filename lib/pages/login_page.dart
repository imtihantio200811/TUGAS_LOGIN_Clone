import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application/Controller/login_controller.dart';

class LoginPag extends StatelessWidget {
  LoginPag({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login API"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextField Username
              TextField(
                controller: controller.txtUsername,
                decoration: const InputDecoration(
                  labelText: "Input Username",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // TextField Password
              TextField(
                controller: controller.txtPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Input Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),

              Obx(() {
                if (controller.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return OutlinedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text("Login"),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
