import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:equinox_21/constants.dart';
import 'package:equinox_21/screens/faq.dart';
import 'package:equinox_21/screens/team_page.dart';
import 'package:equinox_21/screens/timeline_screen.dart';
import 'package:equinox_21/widgets/showOffline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:equinox_21/screens/about_us.dart';

bool isDarkMode = false;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = <Widget>[
    Container(color: Colors.blue),
    Team(),
    TimelineScreen(),
    Aboutus(),
    Faq(),
  ];

  @override
  void initState() {
    super.initState();
    print('callllllllllllllllleddddddddddd');
    manageTheme();
  }

  void manageTheme() {
    DateTime now = DateTime.now(); // current time
    if (now.hour > 18 && now.hour < 6) {
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
        type: BottomNavigationBarType.shifting,
        selectedItemColor:
            isDarkMode == true ? Color(0xffFBD00D) : darkBackground,
        unselectedItemColor:
            isDarkMode == true ? Color(0xffFBD00D) : darkBackground,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: Image.asset(
              'images/equinox_white.png',
              height: screenHeight(context) * 0.05,
              width: screenWidth(context) * 0.2,
            ),
            title: Text(
              'Equinox',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: Icon(
              Icons.people,
              // color: isDarkMode == true ? darkNavButton : lightNavButton,
            ),
            title: Text(
              'Team',
              style: TextStyle(
                  // color: isDarkMode == true ? darkNavButton : lightNavButton
                  ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: Icon(
              Icons.access_time,
              // color: isDarkMode == true ? darkNavButton : lightNavButton,
            ),
            title: Text(
              'Timeline',
              style: TextStyle(
                  // color: isDarkMode == true ? darkNavButton : lightNavButton
                  ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: Icon(
              Icons.library_books,
              // color: isDarkMode == true ? darkNavButton : lightNavButton,
            ),
            title: Text(
              'Books',
              style: TextStyle(
                  // color: isDarkMode == true ? darkNavButton : lightNavButton
                  ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor:
                isDarkMode == true ? darkBackground : lightBackground,
            icon: Icon(
              Icons.headset,
              // color: isDarkMode == true ? darkNavButton : lightNavButton,
            ),
            title: Text(
              'FAQ',
              style: TextStyle(
                  // color: isDarkMode == true ? darkNavButton : lightNavButton
                  ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: navigate,
      ),
    );
  }
}
