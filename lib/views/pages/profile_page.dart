import 'package:flutter/material.dart';
import 'package:start2025/data/notifiers.dart';
import 'package:start2025/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/logo.png'),
          ),
          ListTile(
            title: Text("Sign Out"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return WelcomePage();
              }));
            },
          )
        ],
      ),
    );
  }
}
