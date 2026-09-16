import 'package:flutter/material.dart';
import '../../theme/spotify_theme.dart';

class SpotifyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isGreen;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderSide? borderSide;

  const SpotifyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isGreen = false,
    this.backgroundColor,
    this.textColor,
    this.borderSide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bg = backgroundColor ?? (isGreen ? SpotifyTheme.spotifyGreen : Colors.transparent);
    final fg = textColor ?? (isGreen ? Colors.black : SpotifyTheme.textWhite);

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: bg,
          side: borderSide ??
              (isGreen
                  ? BorderSide.none
                  : const BorderSide(color: SpotifyTheme.borderGray, width: 1)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: fg,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
