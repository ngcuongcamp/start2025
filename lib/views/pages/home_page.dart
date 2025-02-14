import 'package:flutter/material.dart';
import 'package:start2025/data/constants.dart';
import 'package:start2025/views/pages/course_page.dart';
// import 'package:start2025/views/pages/onboarding.dart';
import 'package:start2025/views/widgets/container_widget.dart';
import 'package:start2025/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.keyConcepts,
      KValue.cleanUi,
      KValue.fixBugs
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            HeroWidget(
              title: 'Flutter Mapp',
              nextPage: CoursePage(),
            ),
            ...List.generate(list.length, (i) {
              return ContainerWidget(
                title: list[i],
                description: 'The description of this.',
              );
            }),
          ],
        ),
      ),
    );
  }
}
