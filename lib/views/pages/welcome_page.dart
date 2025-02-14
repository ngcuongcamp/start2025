import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:start2025/views/pages/login_page.dart';
import 'package:start2025/views/pages/onboarding.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/lotties/home_animation_image.json',
                    height: 250.0),
                FittedBox(
                  child: Text(
                    "Flutter Mapp",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                SizedBox(height: 40),

                // register
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OnboardingPage();
                    }));
                  },
                  child: Text('Get Started'),
                ),
                SizedBox(height: 10),
                // login
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage(title: "Login");
                    }));
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                  child: Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
