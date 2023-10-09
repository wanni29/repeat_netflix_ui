import 'package:flutter/material.dart';
import 'package:repeat_netflix_ui/routes.dart';
import 'package:repeat_netflix_ui/screens/splash/splash_screen.dart';
import 'package:repeat_netflix_ui/theme.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
