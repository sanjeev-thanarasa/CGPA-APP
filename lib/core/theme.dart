import 'package:flutter/cupertino.dart';

class AppConstants {
  static const int maxSemesters = 8;
  static const int maxCredits = 6;
  static const List<String> grades = ['A', 'B', 'C', 'D', 'F'];
}

class AppTheme {
  static const Color primaryColor = CupertinoColors.systemYellow;
  static const Color backgroundColor = Color(0xFF171721);
  static const Color textColor = CupertinoColors.white;

  static CupertinoThemeData get darkTheme {
    return const CupertinoThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(color: textColor, fontSize: 16),
      ),
    );
  }
}
