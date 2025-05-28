import 'package:flutter/material.dart';
import 'pages/loading_page.dart';
import 'pages/home.dart';
import 'theme/apptheme.dart'; // assuming you have a custom theme file

void main() {
  runApp(const ForgetMeNotApp());
}

class ForgetMeNotApp extends StatelessWidget {
  const ForgetMeNotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ForgetMeNot',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // from your custom app theme file
      home:  LoadingTextScreen(),  // start with loading page
    );
  }
}
