import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equinox_21/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  bool loading = false;
  DateTime now;
  Map<String, dynamic> data;
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

  getData() async {
    var snap = await FirebaseFirestore.instance
        .collection('Details')
        .doc('Bahubali')
        .get();
    setState(() {
      data = snap.data();
      loading = true;
    });

    print(data.toString());
  }

  @override
  void initState() {
    manageTheme();
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loading
            ? Container(
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth(context) * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight(context) * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Team',
                              style: headingTextStyle(context, isDarkMode)),
                          Padding(
                            padding: EdgeInsets.only(
                                right: screenWidth(context) * 0.05),
                            child: FlatButton(
                              child: Text(
                                "Logout",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Color(0xffE1D342),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () async {
                                final _firebaseAuth = FirebaseAuth.instance;
                                await _firebaseAuth.signOut();
                              },
                            ),
                          ),
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
                        "Bahubali",
                        style: showOfflineSubheadingText(context, isDarkMode),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Our Stars",
                        style: teamPageSubheadingStyle(context, isDarkMode),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Flexible(
                          child: ListView.builder(
                              itemCount: data['teammate'].length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: textTeamPagePadding(context),
                                  child: Text(
                                    data['teammate'][index].toString(),
                                    style:
                                        teamPageTextStyle(context, isDarkMode),
                                  ),
                                );
                              })),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, right: 35.0, top: 45.0),
                        child: Divider(
                          color: Color(0xffE1D342),
                          thickness: 4,
                        ),
                      ),
                      ListTile(
                        leading: FlatButton(
                          child: Image.asset(
                            'images/discord.png',
                            height: 58,
                            width: 58,
                          ),
                          onPressed: () async {
                            await launch(
                                'https://discord.com/invite/EfV4kK3Bgu');
                          },
                        ),
                        title: Text(
                          'Discord Channel',
                          style: GoogleFonts.raleway(
                              color: Color(0xffE1D342),
                              fontSize: screenWidth(context) * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'code:',
                              style: GoogleFonts.raleway(
                                  color: isDarkMode
                                      ? textColorNight
                                      : textColorDay,
                                  fontSize: screenWidth(context) * 0.045),
                            ),
                            Text(
                              '\t\tXs12Vd',
                              style: GoogleFonts.raleway(
                                  color: Color(0xffE1D342),
                                  fontSize: screenWidth(context) * 0.045),
                            ),
                          ],
                        ),
                      ),
                      // Column(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Center(
                      //           child: FlatButton(
                      //             child: Image.asset(
                      //               'images/discord.png',
                      //               height: 58,
                      //               width: 58,
                      //             ),
                      //             onPressed: () {
                      //               launch('https://discord.com/invite/EfV4kK3Bgu');
                      //             },
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text(
                      //               'Discord Channel',
                      //               style: GoogleFonts.raleway(
                      //                   color: Color(0xffE1D342),
                      //                   fontSize: screenWidth(context) * 0.06,
                      //                   fontWeight: FontWeight.bold),
                      //             ),
                      //             SizedBox(height: 15),
                      //             Row(
                      //               mainAxisAlignment: MainAxisAlignment.center,
                      //               children: [
                      //                 Text(
                      //                   'code:',
                      //                   style: GoogleFonts.raleway(
                      //                       color: isDarkMode
                      //                           ? textColorNight
                      //                           : textColorDay,
                      //                       fontSize: screenWidth(context) * 0.045),
                      //                 ),
                      //                 Text(
                      //                   '\t\tXs12Vd',
                      //                   style: GoogleFonts.raleway(
                      //                       color: Color(0xffE1D342),
                      //                       fontSize: screenWidth(context) * 0.045),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: isDarkMode
                      ? darkBackgroundGradient
                      : lightBackgroundGradient,
                ))
            : Container(
                decoration: BoxDecoration(
                  gradient: isDarkMode
                      ? darkBackgroundGradient
                      : lightBackgroundGradient,
                ),
                child: Center(
                    child: CircularProgressIndicator(
                        backgroundColor: Color(0xffFFED43))),
              ),
      ),
    );
  }
}
