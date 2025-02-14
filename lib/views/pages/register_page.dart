import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:start2025/views/widget_tree.dart';
// ignore: unused_import
import 'package:start2025/views/widgets/hero_widget.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controllerEmail = TextEditingController(text: "123");
  TextEditingController controllerPassword = TextEditingController(text: "456");

  String confirmedEmail = "123";
  String confirmedPassword = "456";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Lottie.asset('assets/lotties/home_animation_image.json',
                    height: 350.0),
                TextFormField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  controller: controllerPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Password",
                    // hintText: "Email",
                  ),
                  onChanged: (value) {
                    setState(() {
                      controllerPassword.text = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                FilledButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    onRegisterPressed();
                  },
                  child: Text('Register'),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onRegisterPressed() {
    // ignore: unrelated_type_equality_checks
    if (confirmedEmail == controllerEmail.value.text &&
        // ignore: unrelated_type_equality_checks
        confirmedPassword == controllerPassword.value.text) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return WidgetTree();
      }), (route) => false);
    } else {
      // ignore: avoid_print
      print('Your email or password is wrong, please try again');
    }
  }
}
