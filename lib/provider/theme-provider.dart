import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  var mode = ThemeMode.light;

  void toggleTheme(bool isLight) {
    this.mode = isLight ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  bool isLightTheme() {
    return mode == ThemeMode.light;
  }
}
