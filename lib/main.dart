import 'package:alefedu/presentation/screens/auth/forget_password_screen.dart';
import 'package:alefedu/presentation/screens/auth/login_screen.dart';
import 'package:alefedu/presentation/screens/auth/register_screen.dart';
import 'package:alefedu/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alef Eduction',
      debugShowCheckedModeBanner: false,
      routes: routes,
      // home: ForgetPasswordScreen(),
    );
  }
}
