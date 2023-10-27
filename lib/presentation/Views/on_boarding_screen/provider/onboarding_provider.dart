import 'package:flutter/material.dart';

class OnBoardProvider with ChangeNotifier {
  bool _isLast = false;

  bool get isLast => _isLast;

  set isLastSet(bool isLast) {
    _isLast = isLast;
    notifyListeners();
  }
}
