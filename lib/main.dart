import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hucel_core/hucel_core.dart';

import 'constants.dart/app_routes.dart';
import 'constants.dart/app_string.dart';
import 'constants.dart/app_theme.dart';

Future<void> main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorMaterialWidget(
      details: details,
    );
  };
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().darkTheme,
      title: AppString.appTitle,
      theme: AppTheme().themes,
      initialRoute: AppRoutes.initRoute,
      routes: AppRoutes.instance.routes,
    );
  }
}
