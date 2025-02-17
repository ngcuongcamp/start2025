import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:start2025/views/widgets/hero_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(
                title: 'Course',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getData() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
      var resp = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
      });
      if (resp.statusCode == 200) {
        print(resp.body);
      } else {
        print('fetch error');
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
}
