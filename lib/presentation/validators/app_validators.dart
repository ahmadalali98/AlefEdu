import 'package:flutter/material.dart';

class AppValidator {
  // ================== Auth Validate ==================
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Username is required";
    }
    if (value.length < 3) {
      return "Name must be at least 3 characters";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    RegExp regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!regExp.hasMatch(value)) {
      return "Enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one symbol';
    }
    return null;
  }

  static String? validateFirstName(String? firstName) {
    if (firstName == null || firstName.isEmpty) {
      return 'FirstName is not Valid please enter firstName valid';
    }
    bool hasInvalidChars = RegExp(r'[^a-zA-Z\s]').hasMatch(firstName);
    if (hasInvalidChars) {
      return 'Name should only contain alphabetic characters';
    }
    return null;
  }

  static String? validateEmailAuth(String? emailLogin) {
    if (emailLogin == null || emailLogin.isEmpty) {
      return 'Please enter an email';
    }
    const pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(emailLogin)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validatePasswordAuth(String? passwordLogin) {
    if (passwordLogin == null || passwordLogin.isEmpty) {
      return 'Please enter a password';
    }
    bool hasUppercase = RegExp(r'[A-Z]').hasMatch(passwordLogin);
    bool hasLowercase = RegExp(r'[a-z]').hasMatch(passwordLogin);
    bool hasSymbols = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(passwordLogin);
    if (!hasUppercase) {
      return 'Password should contain at least one uppercase letter';
    }
    if (!hasLowercase) {
      return 'Password should contain at least one lowercase letter';
    }
    if (!hasSymbols) {
      return 'Password should contain at least one symbol';
    }

    if (passwordLogin.length < 8 || passwordLogin.length > 20) {
      return 'Password should be at least 8 characters';
    }

    return null;
  }

  static String? validateUserName(String? userName) {
    if (userName == null || userName.isEmpty) {
      return 'Username is required';
    }
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(userName)) {
      return 'Username should only contain letters, numbers, and underscores';
    }
    if (userName.length < 4 || userName.length > 20) {
      return 'Username should be between 4 and 20 characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required';
    }
    if (!RegExp(r'^\+?[0-9]{8,15}$').hasMatch(phoneNumber)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? validateStrongOtp(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the OTP';
    } else if (value.length < 8) {
      return 'OTP must be at least 8 characters long';
    } else if (!RegExp(
      r'^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9]+$',
    ).hasMatch(value)) {
      return 'OTP must contain at least one letter and one digit';
    }

    return null;
  }

  static String? validateConfirmPass(
    String? confirmPass,
    TextEditingController password,
  ) {
    if (confirmPass == null || confirmPass.isEmpty) {
      return 'Please confirm password';
    }
    if (confirmPass != password.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validatorConfirmPassword(String? val) {
    if (val == null || val.isEmpty) {
      return 'Please confirm your password';
    }
    if (val.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(val)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(val)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(val)) {
      return 'Password must contain at least one symbol';
    }
    return null;
  }

  static String? validateLastName(String? lastName) {
    if (lastName == null || lastName.isEmpty) {
      return 'LastName is not Valid please enter LastName valid';
    }
    bool hasInvalidChars = RegExp(r'[^a-zA-Z\s]').hasMatch(lastName);
    if (hasInvalidChars) {
      return 'Name should only contain alphabetic characters';
    }
    return null;
  }
}
