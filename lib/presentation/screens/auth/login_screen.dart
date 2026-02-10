import 'package:alefedu/constants/app_color.dart';
import 'package:alefedu/constants/app_size.dart';
import 'package:alefedu/presentation/Widget/text_form_feild.dart';
import 'package:alefedu/presentation/validators/app_validators.dart';
import 'package:alefedu/router/router_string.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    AppSize.setSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: AppSize.height * 0.9,
              // width: AppSize.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Lottie.asset(
                      "assets/lotties/Login.json",
                      height: AppSize.height * 0.2,
                      width: AppSize.width * 0.8,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Login your Account ",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("OR", style: TextStyle(fontSize: 18)),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouterString.register);
                          },
                          child: Text(
                            "create a new account",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.cadetBlue,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: AppSize.height * 0.04),
                    CustomTextFormField(
                      hintText: "Email",
                      controller: EmailController,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(Icons.email),
                      validator: (value) {
                        return AppValidator.validateEmail(value);
                      },
                    ),

                    SizedBox(height: AppSize.height * 0.01),
                    CustomTextFormField(
                      hintText: "Password",
                      obscureText: _obscurePassword,
                      controller: PasswordController,
                      keyboardType: TextInputType.text,
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      validator: (value) {
                        return AppValidator.validatePassword(value);
                      },
                    ),

                    // SizedBox(height: AppSize.height * 0.01),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RouterString.forgetPassword,
                          );
                        },
                        child: Text(
                          "Forget Password ? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.cadetBlue,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: AppSize.height * 0.06,
                      width: AppSize.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            RouterString.register,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.cadetBlue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                        ),
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
