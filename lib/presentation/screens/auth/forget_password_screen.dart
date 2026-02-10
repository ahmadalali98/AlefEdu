import 'package:alefedu/constants/app_color.dart';
import 'package:alefedu/constants/app_size.dart';
import 'package:alefedu/presentation/Widget/text_form_feild.dart';
import 'package:alefedu/presentation/validators/app_validators.dart';
import 'package:alefedu/router/router_string.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController EmailController = TextEditingController();
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
                      "assets/lotties/Email successfully sent.json",
                      height: AppSize.height * 0.2,
                      width: AppSize.width * 0.8,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Forgot Your Password?",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSize.height * 0.02),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Enter your email address and we'll send you a link to reset your password.",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.blackIcons,
                        ),
                      ),
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

                    SizedBox(height: AppSize.height * 0.03),

                    SizedBox(
                      height: AppSize.height * 0.06,
                      width: AppSize.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {},
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
                          "Send Reset Link",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RouterString.login);
                        },
                        child: Text(
                          "Back to Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.cadetBlue,
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
