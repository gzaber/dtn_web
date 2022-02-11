import 'package:flutter/material.dart';

class CertificateNotifier extends ChangeNotifier {
  int _selectedIndex = 666;

  int get index => _selectedIndex;

  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
