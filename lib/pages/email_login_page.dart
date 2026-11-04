import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application/Controller/login_controller.dart';
import '../theme/spotify_theme.dart';

class EmailLoginPage extends StatelessWidget {
  EmailLoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.black, // Menyesuaikan background tema gelap ala Spotify
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.arrow_back_ios,
                          color: Colors.white, size: 20),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Email or username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // TextField Username yang terhubung ke LoginController
                TextField(
                  controller: controller.txtUsername,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Input Username",
                    filled: true,
                    fillColor: SpotifyTheme.inputGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 14),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // TextField Password yang terhubung ke LoginController
                TextField(
                  controller: controller.txtPassword,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Input Password",
                    filled: true,
                    fillColor: SpotifyTheme.inputGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 14),
                  ),
                ),
                const SizedBox(height: 24),

                // Tombol Login dengan Obx untuk menangani State Loading & Styling Spotify
                Center(
                  child: Obx(() {
                    if (controller.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    } else {
                      return SizedBox(
                        width: 110,
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: SpotifyTheme.textGray,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          onPressed: () {
                            controller.login();
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      );
                    }
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
