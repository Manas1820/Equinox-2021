import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:equinox_21/constants.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  bool isDarkMode = false;
  DateTime now;

  @override
  void initState() {
    print(DateTime.now());
    now = DateTime.now();
    manageTheme();
    super.initState();
  }

  void manageTheme() {
    DateTime now = DateTime.now();
    print(now.hour); // current time
    if (now.hour > 18 || now.hour < 6) {
      setState(() {
        isDarkMode = true;
      });
    } else {
      setState(() {
        isDarkMode = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
          ),
        ),
      ),
    );
  }
}
