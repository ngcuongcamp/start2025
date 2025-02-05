import 'package:flutter/material.dart';
import 'package:start2025/data/notifiers.dart';
import 'package:start2025/views/pages/home_page.dart';
import 'package:start2025/views/pages/profile_page.dart';
import 'package:start2025/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages[selectedPage];
          }),
      bottomNavigationBar: NavbarWidget(),
      floatingActionButton: ValueListenableBuilder(
          valueListenable: stateTheme,
          builder: (context, indexTheme, child) {
            return FloatingActionButton(
                child: indexTheme == 0
                    ? Icon(Icons.mode_night)
                    : Icon(Icons.sunny),
                onPressed: () {
                  indexTheme == 0 ? stateTheme.value = 1 : stateTheme.value = 0;
                });
          }),
    );
  }
}
