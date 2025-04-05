import 'package:flutter/cupertino.dart';
import 'package:gpa_calculator/views/home_screen.dart';
import 'package:provider/provider.dart';
import 'viewmodels/cgpa_viewmodel.dart';

void main() {
  runApp(const CGPACalculatorApp());
}

class CGPACalculatorApp extends StatelessWidget {
  const CGPACalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CGPAViewModel(),
      child: CupertinoApp(
        title: 'CGPA Calculator',
        theme: const CupertinoThemeData(brightness: Brightness.dark),
        home: const HomeScreen(),
      ),
    );
  }
}
