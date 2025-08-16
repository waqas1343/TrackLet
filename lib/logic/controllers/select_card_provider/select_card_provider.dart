import 'package:flutter/material.dart';

class SelectedCardProvider with ChangeNotifier {
  int _selectedIndex = -1; 

  int get selectedIndex => _selectedIndex;

  void selectCard(int index) {
    _selectedIndex = index;
    notifyListeners(); 
  }
}
