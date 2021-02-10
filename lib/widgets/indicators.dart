import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/constants.dart';

IndicatorStyle earthIndicator(BuildContext context) {
  return IndicatorStyle(
    width: screenWidth(context) * 0.12,
    height: screenHeight(context) * 0.06,
    indicator: Container(
      decoration: BoxDecoration(
        color: darkBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: earthImageNight,
      ),
    ),
  );
}

IndicatorStyle normalIndicator(BuildContext context) {
  return IndicatorStyle(
    width: screenWidth(context) * 0.08,
    height: screenHeight(context) * 0.04,
    indicator: Container(
      decoration: BoxDecoration(
        color: darkBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: screenWidth(context) * 0.002, // soften the shadow
            spreadRadius: screenWidth(context) * 0.001, //extend the shadow
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
