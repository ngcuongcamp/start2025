import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;

  final Widget? nextPage;
  const HeroWidget({
    super.key,
    required this.title,
    this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (nextPage != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return nextPage!;
          }));
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: AspectRatio(
              aspectRatio: 1920 / 1000,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/flutter_thumbnail.png',
                    colorBlendMode: BlendMode.darken,
                    color: Colors.teal,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  letterSpacing: 50.0,
                  color: Colors.white30),
            ),
          ),
        ],
      ),
    );
  }
}
