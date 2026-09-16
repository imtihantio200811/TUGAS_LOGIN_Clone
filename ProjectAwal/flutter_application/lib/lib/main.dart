import 'package:flutter/material.dart';
import '../pages/welcome_page.dart';
import '../theme/spotify_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // Tambahkan {super.key} di sini agar error-nya hilang
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: SpotifyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
