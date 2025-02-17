import 'package:flutter/material.dart';
import 'package:start2025/views/pages/expanded_flexible_page.dart';
import 'package:start2025/views/pages/login_page.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({super.key, required this.title});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();

  bool? isChecked = false;
  bool isSwitch = false;
  double sliderValue = 1.0;
  String? menuItem = 'e2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton(
                    value: menuItem,
                    items: [
                      DropdownMenuItem(
                        value: 'e1',
                        child: Text('Element 1'),
                      ),
                      DropdownMenuItem(
                        value: 'e2',
                        child: Text('Element 2'),
                      ),
                      DropdownMenuItem(
                        value: 'e3',
                        child: Text('Element 3'),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        menuItem = value;
                      });
                    }),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Content'),
                      duration: Durations.extralong1,
                      // behavior: SnackBarBehavior.floating,
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Open Snackbar'),
                ),
                Divider(
                  height: 5,
                  thickness: 2,
                  endIndent: 100.0,
                  color: Colors.teal,
                ),
                SizedBox(
                  height: 50.0,
                  child: VerticalDivider(),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Alert Title'),
                            content: Text('Alert Content'),
                            actions: [
                              FilledButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Close'))
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Open Dialog'),
                ),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      controller.text = value;
                    });
                  },
                ),
                Text(controller.text),
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                CheckboxListTile(
                    // tristate: true,
                    title: Text('Open Snackbar'),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                Switch.adaptive(
                    activeColor: Colors.lightGreenAccent,
                    value: isSwitch,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitch = value;
                      });
                    }),
                SwitchListTile.adaptive(
                    activeColor: Colors.lightGreenAccent,
                    title: Text('Switch me'),
                    value: isSwitch,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitch = value;
                      });
                    }),
                Slider(
                  value: sliderValue,
                  min: 1,
                  max: 10,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
                InkWell(
                  onTap: () {
                    // ignore: avoid_print
                    print('Image tapped');
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white12,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ExpandedFlexiblePage();
                    }));
                  },
                  child: Text('Show Flexible and Expanded'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Click here!'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Click here!'),
                )
              ],
            ),
          ),
        ));
  }
}
