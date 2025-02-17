import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';
import 'package:start2025/views/widget_tree.dart';
// ignore: unused_import
import 'package:start2025/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({super.key, required this.title});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: "123");
  TextEditingController controllerPassword = TextEditingController(text: "456");

  String confirmedEmail = "123";
  String confirmedPassword = "456";
  @override
  Widget build(BuildContext context) {
    // double widthScreen = MediaQuery.of(context).size.width;
    // double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  LayoutBuilder(builder: (context, BoxConstraints constraints) {
                // nếu không có giá trị minWidth, minHeight thì minWidth, minHeight mặc định là 0
                // nếu không có giá trị maxWidth, maxHeight thì mặc định là `double.infinity`
                return FractionallySizedBox(
                  widthFactor: constraints.maxWidth > 500 ? 1.3 : 1.0,
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
                        style: FilledButton.styleFrom(
                          minimumSize: Size(double.infinity, 45.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {
                          onLoginPressed();
                        },
                        child: Text(widget.title),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
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
    } else {}
  }
}
