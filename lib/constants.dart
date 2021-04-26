import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColorNight = Colors.white;
const textColorDay = Colors.black;

const bottomNavIconColorLight = Color(0xff0E1C36);
const bottomNavIconColorDark = Colors.white;

const tileBackgroundLight = Colors.white;
const tileBackgroundDark = Color(0xff091324);

const upLineColor = Color(0xffFFED43);
const downLineColor = Color(0xff3F964F);

const teamPageLightSubheading = Color(0xff5271AA);
const teamPageDarkSubheading = Color(0xffE1D342);

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
  stops: [1.0],
  colors: [Color(0xFF0E1C36)],
);

int secondsNow() {
  int hours = DateTime.now().hour;
  int minutes = DateTime.now().minute;
  int seconds = DateTime.now().second;
  return (hours * 60 * 60) + (minutes * 60) + seconds;
}

Widget indicatorImage = Image.asset('images/indicator.png');
Widget earthImageNight = Image.asset('images/earth_night.png');
Widget earthImageDay = Image.asset('images/earth_day.png');
Widget timerSunImage = Image.asset('images/timer_sun.png');
Widget timerMoonImage = Image.asset('images/timer_moon.png');
Widget moonImage = Image.asset('images/moon_full.png');
Widget sunImage = Image.asset('images/sun_full.png');

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

TextStyle dayNumberTextStyle(BuildContext context, isDarkMode) =>
    GoogleFonts.raleway(
        color: isDarkMode ? Color(0xffFFED43) : Colors.blueGrey,
        fontWeight: FontWeight.bold,
        fontSize: screenWidth(context) * 0.043);

TextStyle timerTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.keaniaOne(
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

TextStyle headingSubTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.048,
    );

TextStyle faqTileHeadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.048,
    );

TextStyle faqTileSubheadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
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
      fontSize: screenWidth(context) * 0.09,
    );

TextStyle teamNameStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontWeight: FontWeight.bold,
      fontSize: screenWidth(context) * 0.043,
    );

TextStyle teamPageSubheadingStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? teamPageDarkSubheading : teamPageLightSubheading,
      fontWeight: FontWeight.bold,
      fontSize: screenWidth(context) * 0.06,
    );

TextStyle aboutSubheadingStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? teamPageDarkSubheading : teamPageLightSubheading,
      fontWeight: FontWeight.bold,
      fontSize: screenWidth(context) * 0.048,
    );

TextStyle aboutusCardHeadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.052,
      fontWeight: FontWeight.bold,
    );

TextStyle aboutusOrganiserHeadingTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.042,
      fontWeight: FontWeight.bold,
    );

TextStyle aboutusOrganiserNameTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.042,
      fontWeight: FontWeight.bold,
    );

TextStyle aboutusCardTracksTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.052,
    );

TextStyle teamPageTextStyle(BuildContext context, bool isDarkMode) =>
    GoogleFonts.raleway(
      color: isDarkMode ? textColorNight : textColorDay,
      fontSize: screenWidth(context) * 0.057,
    );

EdgeInsets textTeamPagePadding(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.01,
    top: screenWidth(context) * 0.01,
    bottom: screenWidth(context) * 0.01);
