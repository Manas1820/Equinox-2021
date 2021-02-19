import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/constants.dart';

IndicatorStyle earthIndicatorDay(BuildContext context) {
  return IndicatorStyle(
    width: 50.0,
    height: 50.0,
    indicator: Center(
      child: earthImageDay,
    ),
  );
}

IndicatorStyle earthIndicatorNight(BuildContext context) {
  return IndicatorStyle(
    width: 50.0,
    height: 50.0,
    indicator: Center(
      child: earthImageNight,
    ),
  );
}

IndicatorStyle normalIndicator(BuildContext context) {
  return IndicatorStyle(
    width: 30.0,
    height: 30.0,
    indicator: Container(
      decoration: BoxDecoration(
        color: darkBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3.0, // soften the shadow
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
      ),
    ),
  );
}
