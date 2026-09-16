import 'package:flutter/material.dart';
import '../../widgets/spotify_button.dart';
import '../../widgets/textWidget.dart';
import 'login_options_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/spotify.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const Spacer(),
              const Textwidget(
                text: 'Millions of songs.\nFree on Spotify.',
              ),
              const SizedBox(height: 48),
              SpotifyButton(
                text: 'Sign up free',
                isGreen: true,
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SpotifyButton(
                text: 'Log in',
                isGreen: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginOptionsPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
