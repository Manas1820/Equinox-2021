import 'package:flutter/material.dart';

String timeNow;

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  void initState() {
    super.initState();
    timeNow = "hemlo";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: time(),
        builder: (context, stream) {
          return Container(
            child: Text(timeNow),
          );
        },
      ),
    );
  }
}

Stream<String> time() async* {
  timeNow = DateTime.now().toString();
  yield timeNow;
}
