import 'package:flutter/material.dart';
import 'package:start2025/views/widget_tree.dart';
import 'package:start2025/views/widgets/hero_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail =
      new TextEditingController(text: "123");
  TextEditingController controllerPassword =
      new TextEditingController(text: "456");

  String confirmedEmail = "123";
  String confirmedPassword = "456";
  @override
  void initState() {
    print('init state');
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
                HeroWidget(
                  title: widget.title,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Email",
                    // hintText: "Email",
                  ),
                  // onChanged: (value) {
                  //   setState(() {
                  //     controllerEmail.text = value;
                  //   });
                  // },
                  // validator: <String>(value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "Please enter your email address";
                  //   } else if (!value.contains("@gmail.com")) {
                  //     return "Format your email is wrong!";
                  //   }
                  // },
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    onLoginPressed();
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    // ignore: unrelated_type_equality_checks
    if (confirmedEmail == controllerEmail.value.text &&
        // ignore: unrelated_type_equality_checks
        confirmedPassword == controllerPassword.value.text) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return WidgetTree();
      }), (route) => false);
    } else {
      print('Your email or password is wrong, please try again');
    }
  }
}
