import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColorNight = Colors.white;
const textColorDay = Colors.black;

const bottomNavIconColorLight = Color(0xff0E1C36);
const bottomNavIconColorDark = Colors.white;

const upLineColor = Color(0xffFFED43);
const downLineColor = Color(0xff3F964F);

const darkBackground = Color(0xFF0E1C36);
const lightBackground = Color(0xFFCCF2FA);
const dropDownColor = Color(0xFF6A7282);
const lightBackgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.1, 0.5, 0.7, 0.9],
  colors: [
    Color(0xffE0FCFD),
    Color(0xffD5F7FC),
    Color(0xffBBEBF8),
    Color(0xffB1E6F7),
  ],
);
const darkBackgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.1, 0.5, 0.7, 0.9],
  colors: [
    Color(0xff010205),
    Color(0xff070E1B),
    Color(0xff0C182F),
    Color(0xFF0E1C36),
  ],
);

Widget indicatorImage = Image.asset('images/indicator.png');
Widget earthImageNight = Image.asset('images/earth_night.png');
Widget moonImage = Image.asset('images/moon_white.png');
Widget sunImage = Image.asset('images/sun.png');

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

EdgeInsets tilePadding(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.07,
    top: screenWidth(context) * 0.07,
    bottom: screenWidth(context) * 0.07);

EdgeInsets headingPadding(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.07,
    top: screenWidth(context) * 0.07,
    bottom: screenWidth(context) * 0.07);

TextStyle textStyle(BuildContext context, bool isDarkMode, bool isClicked) =>
    GoogleFonts.raleway(
        color: isDarkMode ? textColorNight : textColorDay,
        fontSize: screenWidth(context) * 0.043,
        fontWeight: isClicked ? FontWeight.bold : null);

TextStyle timerTextStyle(BuildContext context, bool isDarkMode) => GoogleFonts.k2d(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.12,
    );

TextStyle bottomNavBarIconTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? bottomNavIconColorDark : bottomNavIconColorLight,
    );

EdgeInsets expantionTilePaddingFaq(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.03,
    right: screenWidth(context) * 0.03,
    top: screenWidth(context) * 0.02,
    bottom: screenWidth(context) * 0.02);

TextStyle headingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.1,
    );

TextStyle faqTileHeadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      fontSize: screenWidth(context) * 0.048,
    );

TextStyle faqTileSubheadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      fontSize: screenWidth(context) * 0.043,
    );

TextStyle showOfflineHeadingText(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontWeight: FontWeight.bold,
      fontSize: screenWidth(context) * 0.09,
    );

TextStyle showOfflineSubheadingText(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontWeight: FontWeight.bold,
      fontSize: screenWidth(context) * 0.06,
    );
