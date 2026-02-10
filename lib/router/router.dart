import 'package:alefedu/presentation/screens/auth/forget_password_screen.dart';
import 'package:alefedu/presentation/screens/auth/login_screen.dart';
import 'package:alefedu/presentation/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:alefedu/router/router_string.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  RouterString.login: (context) => LoginScreen(),
  RouterString.register: (context) => RegisterScreen(),
  RouterString.forgetPassword: (context) => ForgetPasswordScreen(),
};
