import 'package:alefedu/constants/app_color.dart';
import 'package:alefedu/constants/app_size.dart';
import 'package:alefedu/presentation/validators/app_validators.dart';
import 'package:alefedu/router/router_string.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Widget/text_form_feild.dart' show CustomTextFormField;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  TextEditingController UserNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfrimPasswordController = TextEditingController();

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
              height: AppSize.height * 0.8,
              // width: AppSize.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 14),
                    Lottie.asset(
                      "assets/lotties/Register.json",
                      height: AppSize.height * 0.2,
                      width: AppSize.width * 0.8,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create Your Student Account",
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
                        Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 16),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouterString.login);
                          },
                          child: Text(
                            "Log in here",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.cadetBlue,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: AppSize.height * 0.04),
                    CustomTextFormField(
                      hintText: "User Name",
                      controller: UserNameController,
                      keyboardType: TextInputType.text,
                      prefixIcon: const Icon(Icons.person),
                      validator: (value) {
                        return AppValidator.validateUserName(value);
                      },
                    ),

                    SizedBox(height: AppSize.height * 0.01),
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
                      hintText: "Phone Number",
                      controller: PhoneNumberController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const Icon(Icons.phone_android),
                      validator: (value) {
                        return AppValidator.validatePhoneNumber(value);
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

                    SizedBox(height: AppSize.height * 0.01),

                    CustomTextFormField(
                      hintText: "Confirm Password",
                      obscureText: _obscureConfirmPassword,
                      controller: ConfrimPasswordController,
                      keyboardType: TextInputType.text,
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),

                      validator: (value) {
                        return AppValidator.validatePassword(value);
                      },
                    ),

                    SizedBox(height: AppSize.height * 0.04),

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
                          "Register",
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
    ;
  }
}
