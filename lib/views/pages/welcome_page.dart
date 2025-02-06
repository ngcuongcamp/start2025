import 'package:flutter/material.dart';
import 'package:start2025/views/widget_tree.dart';
import 'package:start2025/views/widgets/hero_widget.dart';

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
            HeroWidget(),
            SizedBox(height: 10),
            FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return WidgetTree();
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, letterSpacing: 2),
                ))
          ],
        ),
      ),
    );
  }
}
