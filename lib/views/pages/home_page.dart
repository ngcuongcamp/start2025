import 'package:flutter/material.dart';
import 'package:start2025/data/constants.dart';
import 'package:start2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(
              title: 'Flutter Mapp',
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Basic Layout', style: KTextStyle.titleTealText),
                      Text(
                        'The description of this',
                        style: KTextStyle.descriptionText,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 3:14
