import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:start2025/views/pages/login_page.dart';
import 'package:start2025/views/pages/onboarding.dart';
import 'package:start2025/views/pages/register_page.dart';

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
                Lottie.asset('assets/lotties/home_lotties.json', height: 350.0),

                // HeroWidget(),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                FilledButton(
                  child: Text('Get Started'),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OnboardingPage();
                    }));
                  },
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage(title: "Login");
                    }));
                  },
                  child: Text('Login'),
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
