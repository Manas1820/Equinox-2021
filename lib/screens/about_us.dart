import 'package:equinox_21/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  bool isDarkMode = false;
  DateTime now;

  @override
  void initState() {
    manageTheme();
    super.initState();
  }

  void manageTheme() {
    DateTime now = DateTime.now(); // current time
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
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight(context) * 0.04,
                left: screenWidth(context) * 0.01),
            child: ListView(
              children: [
                Text('\t\tAbout us', style: headingTextStyle(context, isDarkMode)),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: expantionTilePaddingFaq(context),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 10,
                      color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('Equinox',
                                style: aboutusCardHeadingTextStyle(
                                    context, isDarkMode)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                'Equinox is a 36-Hour hackathon in which the participants’ ideas will not just be limited to problem statements based on Web development, hardware, Artificial Intelligence etc. The hack aims to crank the creative cogs of the participants. You have the opportunity and the resources to express your creativity, ingenuity and determination to explore anything you want. ',
                                style:
                                    faqTileSubheadingTextStyle(context, isDarkMode)),
                            SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 10,
                      color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('RoboVITics',
                                style: aboutusCardHeadingTextStyle(
                                    context, isDarkMode)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                'RoboVITics was the first technical club to be set up in VIT, Vellore back in 2008. Since then, the club actively works on many research projects and conducts national level events throughout the year. Some of our successful events include Hands on Robotics, Machine Design with Fusion 360 and Cosmos 360 and Robowars, which attracts a footfall of 30,000+ students every year. Team Orcus, a subset of RoboVITics, has gained international recognition, due to its impressive performance in combat robotics.',
                                style:
                                    faqTileSubheadingTextStyle(context, isDarkMode)),
                            SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 10,
                    color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tracks',
                              style:
                                  aboutusCardHeadingTextStyle(context, isDarkMode)),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(context) * 0.06),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_ai_ds.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text('AI & DS',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_ar_vr.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('AR & VR',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(context) * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_blockchain.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('Blockchain',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_defence.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('Defence',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth(context) * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_health.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('\t\tHealth\n & Safety',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/tracks_robotics.png',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          height: screenHeight(context) * 0.12,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('Robotics',
                                            style: aboutusCardTracksTextStyle(
                                                context, isDarkMode)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.05,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/tracks_open.png',
                                      color:
                                          isDarkMode ? Colors.white : Colors.black,
                                      height: screenHeight(context) * 0.12,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text('Open Innovation',
                                        style: aboutusCardTracksTextStyle(
                                            context, isDarkMode)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
          )),
    );
  }
}
