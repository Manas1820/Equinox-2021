import 'package:cloud_firestore/cloud_firestore.dart';
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
  final _firestore = FirebaseFirestore.instance;

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
    return Container(
      decoration: BoxDecoration(
        gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight(context) * 0.04,
                left: screenWidth(context) * 0.02),
            child: Stack(
              children: [
                Positioned(
                  top: screenHeight(context) * 0.5,
                  left: screenWidth(context) * 0.73,
                  child: SizedBox(
                      height: screenHeight(context) * 0.25,
                      child: isDarkMode ? moonImage : sunImage),
                ),
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
                          stream: _firestore.collection('events').snapshots(),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.orangeAccent,
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
                              IndicatorStyle indicator = normalIndicator(context);
                              Color colorUp = Colors.yellow[400];
                              Color colorDown = Colors.green[400];
                              if (now.isAfter(thisEvent) &&
                                  now.isBefore(nextEvent)) {
                                indicator = earthIndicator(context);
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
                              i == tiles.length ? isLast = true : isLast = false;
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
