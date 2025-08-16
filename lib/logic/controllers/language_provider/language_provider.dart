import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  String _selectedLanguage = "ENG";

  String get selectedLanguage => _selectedLanguage;

  void selectLanguage(String lang) {
    _selectedLanguage = lang;
    notifyListeners();
  }
}
