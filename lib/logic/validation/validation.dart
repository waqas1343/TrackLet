import 'package:flutter/material.dart';

class LoginValidationProvider with ChangeNotifier {
  String? emailError;
  String? passwordError;
  bool isChecked = false;

  void validateEmail(String value) {
    if (value.isEmpty) {
      emailError = "Enter the email given by admin";
    } else if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
      emailError = "invalid Email";
    } else {
      emailError = null;
    }
    notifyListeners();
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      passwordError = "Enter the password given by admin";
    } else if (value.length < 6) {
      passwordError = "Password shuld be grater than 6 charcter";
    } else {
      passwordError = null;
    }
    notifyListeners();
  }

  void toggleCheckbox(bool value) {
    isChecked = value;
    notifyListeners();
  }

  bool validateForm(String email, String password) {
    validateEmail(email);
    validatePassword(password);
    return emailError == null && passwordError == null;
  }
}
