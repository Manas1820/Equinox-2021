import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:equinox_21/widgets/indicators.dart';
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
    startTimer();
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

  int remainingTime() {
    var secondsLeftNow = (24 * 60 * 60) - secondsNow();
    if (DateTime.now().day == 18) {
      return secondsLeftNow + (24 * 60 * 60) + (10 * 60 * 60);
    }
    if (DateTime.now().day == 19) {
      return secondsLeftNow + (10 * 60 * 60);
    }
    if (DateTime.now().day == 20) {
      return (10 * 60 * 60) - secondsLeftNow;
    }
    return 0;
  }

  bool startTimer() => DateTime.now().isAfter(DateTime.parse('2021-02-18 22:00:00'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth(context) * 0.12),
          child: CircularCountDownTimer(
            duration: remainingTime(),
            initialDuration: 0,
            controller: CountDownController(),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            ringColor: isDarkMode ? Color(0xffCCCC) : Color(0xff0E1C36),
            // isDarkMode ? Color(0xffCCCCCC) : Color(0xff0E1C36),
            ringGradient: null,
            fillColor: isDarkMode ? Color(0xffCCCC) : Color(0xff0E1C36),
            fillGradient: null,
            backgroundGradient: null,
            strokeWidth: 7.0,
            strokeCap: StrokeCap.round,
            textStyle: timerTextStyle(context, isDarkMode),
            textFormat: CountdownTextFormat.HH_MM_SS,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: startTimer(),
            onStart: () {
              print('Countdown Started');
            },
            onComplete: () {
              print('Countdown Ended');
            },
          ),
        ),
      ),
    );
  }
}
