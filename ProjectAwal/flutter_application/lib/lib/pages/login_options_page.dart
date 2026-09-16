import 'package:flutter/material.dart';
import '../../widgets/social_login_button.dart';
import '../../theme/spotify_theme.dart';
import 'email_login_page.dart';
import '../../widgets/textWidget.dart';

class LoginOptionsPage extends StatelessWidget {
  const LoginOptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.arrow_back_ios,
                    color: Colors.white, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 24),
              Center(
                child: Image.asset(
                  'assets/spotify.png',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 24),
              const Textwidget(
                text: 'Log in to continue',
              ),
              const SizedBox(height: 32),
              SocialLoginButton(
                text: 'Continue with email',
                assetIconPath: 'assets/email.png',
                isGreen: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailLoginPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              SocialLoginButton(
                text: 'Continue with Google',
                assetIconPath: 'assets/google.png',
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SocialLoginButton(
                text: 'Continue with Facebook',
                assetIconPath: 'assets/facebook.png',
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              SocialLoginButton(
                text: 'Continue with Apple',
                assetIconPath: 'assets/apple.png',
                onPressed: () {},
              ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style:
                          TextStyle(color: SpotifyTheme.textGray, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
