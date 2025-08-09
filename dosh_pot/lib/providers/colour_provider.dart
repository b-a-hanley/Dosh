import 'package:flutter/material.dart';

class ColourProvider extends ChangeNotifier {
  // Default primary color
  Color _primaryColor = Colors.blue;

  Color get primaryColor => _primaryColor;

  void setPrimaryColor(Color color) {
    _primaryColor = color;
    notifyListeners();
  }

  // Optional: pre-defined themes
  ThemeData get themeData => ThemeData(
        primaryColor: _primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor),
      );
}
