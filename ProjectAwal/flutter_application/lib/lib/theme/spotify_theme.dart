import 'package:flutter/material.dart';

class SpotifyTheme {
  static const Color backgroundBlack = Color(0xFF121212);
  static const Color spotifyGreen = Color(0xFF1ED760);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGray = Color(0xFFB3B3B3);
  static const Color surfaceGray = Color(0xFF282828);
  static const Color inputGray = Color(0xFF777777);
  static const Color borderGray = Color(0xFF535353);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundBlack,
    primaryColor: spotifyGreen,
    fontFamily: 'sans-serif',
    colorScheme: const ColorScheme.dark(
      background: backgroundBlack,
      primary: spotifyGreen,
      surface: surfaceGray,
    ),
  );
}
