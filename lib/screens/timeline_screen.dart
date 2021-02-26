import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equinox_21/screens/timer_screen.dart';
import 'package:equinox_21/widgets/indicators.dart';
import 'package:equinox_21/widgets/timeline_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:equinox_21/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  bool isDarkMode = false;
  DateTime now;
  bool isFirst = false;
  bool isLast = false;
  bool isSwiped = false;
  int dayNumber = -1;
  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    print(DateTime.now());
    now = DateTime.now();
    manageTheme();
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
    return Container(
      decoration: BoxDecoration(
        gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: PageView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight(context) * 0.04,
                    left: screenWidth(context) * 0.02),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\t\tTimeline',
                          style: GoogleFonts.raleway(
                            color: isDarkMode ? textColorNight : textColorDay,
                            fontSize: screenWidth(context) * 0.1,
                          ),
                        ),
                        SizedBox(height: screenHeight(context) * 0.01),
                        Expanded(
                          child: StreamBuilder<QuerySnapshot>(
                              stream: _firestore
                                  .collection('events')
                                  .orderBy('thisEvent')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      backgroundColor: isDarkMode
                                          ? Colors.yellow
                                          : darkBackground,
                                    ),
                                  );
                                }
                                final tiles = snapshot.data.docs;
                                List<TimelineTileItem> timelineTileList = [];
                                int i = 0;
                                for (var tile in tiles) {
                                  final title = tile.data()['title'];
                                  final time = tile.data()['time'];
                                  final about = tile.data()['about'];
                                  final thisEvent =
                                      DateTime.parse(tile.data()['thisEvent']);
                                  final nextEvent =
                                      DateTime.parse(tile.data()['nextEvent']);
                                  var day;
                                  try {
                                    day = tile.data()['day'];
                                    dayNumber = -2;
                                    print(dayNumber);
                                  } catch (e) {
                                    print(e);
                                  }
                                  IndicatorStyle indicator =
                                      normalIndicator(context);
                                  Color colorUp = upLineColor;
                                  Color colorDown = downLineColor;
                                  if (now.isAfter(thisEvent) &&
                                      now.isBefore(nextEvent)) {
                                    indicator = isDarkMode
                                        ? earthIndicatorNight(context)
                                        : earthIndicatorDay(context);
                                    colorUp = upLineColor;
                                    colorDown = downLineColor;
                                  } else if (now.isBefore(thisEvent)) {
                                    colorUp = downLineColor;
                                    colorDown = downLineColor;
                                  } else if (now.isAfter(thisEvent)) {
                                    colorUp = upLineColor;
                                    colorDown = upLineColor;
                                  }
                                  i == 0 ? isFirst = true : isFirst = false;
                                  i++;
                                  i == tiles.length
                                      ? isLast = true
                                      : isLast = false;
                                  final tileToAdd = TimelineTileItem(
                                    about: about,
                                    time: time,
                                    title: title,
                                    isFirst: isFirst,
                                    isLast: isLast,
                                    isDarkMode: isDarkMode,
                                    indicator: indicator,
                                    colorUp: colorUp,
                                    colorDown: colorDown,
                                    day: day,
                                  );
                                  timelineTileList.add(tileToAdd);
                                }
                                return Padding(
                                  padding: EdgeInsets.only(
                                      right: screenWidth(context) * 0.01),
                                  child: ListView(
                                    children: timelineTileList,
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Positioned(
                      top: screenHeight(context) * 0.5,
                      left: screenWidth(context) * 0.75,
                      child: AnimatedContainer(
                          height: screenHeight(context) * 0.25,
                          duration: Duration(seconds: 2),
                          child: isDarkMode ? moonImage : sunImage),
                    ),
                  ],
                ),
              ),
              TimerScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => TimerScreen()),
