import 'package:flutter/material.dart';
import 'package:start2025/views/widget_tree.dart';
import 'package:start2025/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:start2025/views/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/home_lotties.json'),
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
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Text('Get Started'),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 45.0),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
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
    );
  }
}
