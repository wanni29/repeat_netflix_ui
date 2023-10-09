import 'package:flutter/material.dart';
import 'package:repeat_netflix_ui/screens/profile/profile_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "MODU PLAY",
          style: TextStyle(
              color: Colors.red, fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
