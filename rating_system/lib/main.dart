import 'package:flutter/material.dart';
import 'package:rating_system/Pages/forgetpw_page.dart';
import 'package:rating_system/Pages/login_page.dart';
import 'package:rating_system/Pages/signup_page.dart';

import 'Pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => LandingPage(),
        '/forget-password': (context) => ForgetPWPage(),
      },
      home: LandingPage(),
    );
  }
}
