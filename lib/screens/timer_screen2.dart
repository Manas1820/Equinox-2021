import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:equinox_21/widgets/indicators.dart';
import 'package:flutter/material.dart';
import 'package:equinox_21/constants.dart';

class TimerScreen2 extends StatefulWidget {
  @override
  _TimerScreen2State createState() => _TimerScreen2State();
}

class _TimerScreen2State extends State<TimerScreen2> {
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
      body: Container(
        decoration: BoxDecoration(
          gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth(context) * 0.12),
          child: CircularCountDownTimer(
            duration: 5,
            initialDuration: 0,
            controller: CountDownController(),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            ringColor: downLineColor,
            // isDarkMode ? Color(0xffCCCCCC) : Color(0xff0E1C36),
            ringGradient: null,
            fillColor: upLineColor,
            fillGradient: null,
            backgroundGradient: null,
            strokeWidth: 7.0,
            strokeCap: StrokeCap.round,
            textStyle: timerTextStyle(context, isDarkMode),
            textFormat: CountdownTextFormat.HH_MM_SS,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
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

// bool startTimer(){
//   var eventDate = DateTime.parse('2021-02-15 19:00:00');
//   if(DateTime.now().isAfter(eventDate)){
//     return true;
//   }
//   return false;
// }
