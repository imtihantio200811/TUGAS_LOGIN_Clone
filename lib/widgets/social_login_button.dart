import 'package:flutter/material.dart';
import '../theme/spotify_theme.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String assetIconPath;
  final VoidCallback onPressed;
  final bool isGreen;

  const SocialLoginButton({
    Key? key,
    required this.text,
    required this.assetIconPath,
    required this.onPressed,
    this.isGreen = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        isGreen ? SpotifyTheme.spotifyGreen : Colors.transparent;
    final textColor = isGreen ? Colors.black : SpotifyTheme.textWhite;
    final borderColor = isGreen ? Colors.transparent : SpotifyTheme.borderGray;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: borderColor, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                assetIconPath,
                width: 20,
                height: 20,
              ),
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
