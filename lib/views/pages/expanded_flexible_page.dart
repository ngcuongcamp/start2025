import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            Expanded(
              child: Container(
                color: Colors.teal,
                height: 20,
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.red,
                height: 20,
                child: Text('Hello'),
              ),
              // flex: 2,
            ),
          ]),
          SizedBox(height: 10),
          Row(children: [
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.red,
                height: 20,
                child: Text('Hello'),
              ),
              // flex: 2,
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                height: 20,
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
