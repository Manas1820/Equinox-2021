import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:equinox_21/constants.dart';
import 'package:equinox_21/screens/codeofconduct.dart';
import 'package:equinox_21/screens/faq.dart';
import 'package:equinox_21/screens/timeline_screen.dart';
import 'package:equinox_21/widgets/showOffline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:equinox_21/screens/about_us.dart';
import 'package:google_fonts/google_fonts.dart';

bool isDarkMode = false;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = <Widget>[
    TimelineScreen(),
    CodeOfConduct(),
    Faq(),
    Aboutus(),
  ];

  @override
  void initState() {
    super.initState();
    manageTheme();
  }

  void manageTheme() {
    DateTime now = DateTime.now(); // current time
    print(now.hour);
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

  void navigate(index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConnectivityWidgetWrapper(
        offlineWidget: ShowOffline(isDarkMode: isDarkMode),
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffB1E6F7),
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: isDarkMode
                ? Image.asset(
                    'images/timeline_dark.png',
                    height: screenHeight(context) * 0.035,
                  )
                : Image.asset(
                    'images/timeline_light.png',
                    height: screenHeight(context) * 0.035,
                  ),
            title: Text(
              'Timeline',
              style: bottomNavBarIconTextStyle(context, isDarkMode),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: isDarkMode
                ? Image.asset(
                    'images/aboutUs_dark.png',
                    height: screenHeight(context) * 0.035,
                  )
                : Image.asset(
                    'images/aboutUs_light.png',
                    height: screenHeight(context) * 0.035,
                  ),
            title: Text(
              'Code of Conduct',
              style: bottomNavBarIconTextStyle(context, isDarkMode),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: isDarkMode
                ? Image.asset(
                    'images/faq_dark.png',
                    height: screenHeight(context) * 0.035,
                  )
                : Image.asset(
                    'images/faq_light.png',
                    height: screenHeight(context) * 0.035,
                  ),
            title: Text(
              'FAQs',
              style: bottomNavBarIconTextStyle(context, isDarkMode),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: isDarkMode ? darkBackground : lightBackground,
            icon: isDarkMode
                ? Image.asset(
                    'images/equinox_white.png',
                    height: screenHeight(context) * 0.04,
                  )
                : Image.asset(
                    'images/equinox_black.png',
                    height: screenHeight(context) * 0.04,
                  ),
            title: Text(
              'Equinox',
              style: bottomNavBarIconTextStyle(context, isDarkMode),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: navigate,
      ),
    );
  }
}
