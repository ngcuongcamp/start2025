import 'package:flutter/material.dart';
import 'package:start2025/data/notifiers.dart';
import 'package:start2025/views/widget_tree.dart';

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
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: stateTheme,
        builder: (context, stateTheme, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: (stateTheme == 0
                  ? ThemeData(
                      colorScheme: ColorScheme.fromSeed(
                        seedColor: Colors.teal,
                        brightness: Brightness.dark,
                      ),
                    )
                  : ThemeData(
                      colorScheme: ColorScheme.fromSeed(
                        seedColor: Colors.teal,
                        brightness: Brightness.light,
                      ),
                    )),
              home: WidgetTree());
        });
  }
}
