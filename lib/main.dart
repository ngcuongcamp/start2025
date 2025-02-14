import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:start2025/data/constants.dart';
import 'package:start2025/data/notifiers.dart';
import 'package:start2025/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeate = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = repeate ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.teal,
                  brightness: (isDarkMode ? Brightness.dark : Brightness.light),
                ),
              ),
              // home: WidgetTree());
              home: WelcomePage());
        });
  }
}
