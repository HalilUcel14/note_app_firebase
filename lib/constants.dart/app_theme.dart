import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';

class AppTheme {
  //
  ThemeData themes = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      elevation: 0.00,
      centerTitle: true,
      backgroundColor: AppStyle.mainColor,
    ),
  );
  //
}
