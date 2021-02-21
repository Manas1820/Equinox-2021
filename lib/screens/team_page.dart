import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equinox_21/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Team());
}

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  bool isDarkMode = false;
  DateTime now;
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

  getData() {
    FirebaseFirestore.instance.collection('Details').doc("Bahubali").get();
  }

  @override
  void initState() {
    manageTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\tMy Team',
                          style: headingTextStyle(context, isDarkMode)),
                      IconButton(
                        icon: Icon(FeatherIcons.logOut),
                        color:
                            isDarkMode ? teamPageDarkSubheading : textColorDay,
                        onPressed: () async {
                          final _firebaseAuth = FirebaseAuth.instance;
                          await _firebaseAuth.signOut();
                        }, // TODO: write the signout function
                      )
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "We're called",
                    style: teamPageSubheadingStyle(context, isDarkMode),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "teamname",
                    style: showOfflineSubheadingText(context, isDarkMode),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Our Stars",
                    style: teamPageSubheadingStyle(context, isDarkMode),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35.0, right: 35.0, top: 45.0),
                    child: Divider(
                      color: Color(0xffE1D342),
                      thickness: 4,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discord Channel',
                            style: GoogleFonts.raleway(
                                color: Color(0xffE1D342),
                                fontSize: screenWidth(context) * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  'code:\t',
                                  style: GoogleFonts.raleway(
                                      color: isDarkMode
                                          ? textColorNight
                                          : textColorDay,
                                      fontSize: screenWidth(context) * 0.045),
                                ),
                                Text(
                                  'Xs12Vd',
                                  style: GoogleFonts.raleway(
                                      color: Color(0xffE1D342),
                                      fontSize: screenWidth(context) * 0.045),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Center(
                    child: FlatButton(
                      child: Image.asset(
                        'images/discord.png',
                        height: 58,
                        width: 58,
                      ),
                      onPressed: () {
                        launch('https://discord.com/invite/EfV4kK3Bgu');
                      },
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient:
                  isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
            )),
      ),
    );
  }
}
