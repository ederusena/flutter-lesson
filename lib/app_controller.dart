import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppController instance = AppController();

  toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
