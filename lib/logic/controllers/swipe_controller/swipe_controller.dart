import 'package:flutter/material.dart';

class SwipeController with ChangeNotifier {
  double _swipeValue = 0.0;
  bool _isConfirmed = false;

  double get swipeValue => _swipeValue;
  bool get isConfirmed => _isConfirmed;

  void updateSwipe(double value) {
    _swipeValue = value.clamp(0.0, 1.0);
    notifyListeners();
  }

  void completeSwipe() {
    _isConfirmed = true;
    _swipeValue = 1.0;
    notifyListeners();
  }

  void resetSwipe() {
    _isConfirmed = false;
    _swipeValue = 0.0;
    notifyListeners();
  }
}
