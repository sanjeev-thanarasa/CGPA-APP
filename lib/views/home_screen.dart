import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const Header(),
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 5.0,
            percent: 1.0,
            center: new Text("100%"),
            progressColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: CupertinoColors.systemYellow,
      child: Text(
        'Good Job!',
        style: TextStyle(color: CupertinoColors.white, fontSize: 24),
      ),
    );
  }
}
