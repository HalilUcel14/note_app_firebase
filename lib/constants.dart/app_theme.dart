import 'package:flutter/material.dart';
import 'package:note_app/constants.dart/app_style.dart';

class AppTheme {
  //
  ThemeData themes = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      elevation: 0.00,
      centerTitle: true,
      titleTextStyle: AppStyle.mainTitle.copyWith(color: Colors.black),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: AppStyle.mainColor,
    ),
  );
  //
}
