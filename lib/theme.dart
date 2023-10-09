import 'package:flutter/material.dart';
import 'package:repeat_netflix_ui/constants.dart';

ThemeData theme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(bodyText2: TextStyle(color: kTextColor)),
  );
}
