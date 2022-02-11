import 'package:flutter/material.dart';

class PageNotifier extends ChangeNotifier {
  int _selectedIndex = 0;

  int get index => _selectedIndex;

  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
