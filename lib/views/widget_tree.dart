import 'package:flutter/material.dart';
import 'package:start2025/data/notifiers.dart';
import 'package:start2025/views/pages/home_page.dart';
import 'package:start2025/views/pages/profile_page.dart';
import 'package:start2025/views/widgets/navbar_widget.dart';
import 'package:start2025/views/pages/settings_page.dart';

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
        actions: [
          IconButton(
            icon: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return isDarkMode
                      ? Icon(Icons.sunny)
                      : Icon(Icons.mode_night);
                }),
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SettingsPage(
                    title: 'Setting Page',
                  );
                },
              ));
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages[selectedPage];
          }),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
