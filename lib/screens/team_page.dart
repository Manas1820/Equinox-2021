import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equinox_21/constants.dart';
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

  @override
  void initState() {
    getdata();
    manageTheme();
    super.initState();
  }

  var color1 = const Color(0xffE1D342);
  var lightBackground = Color(0xFFCCF2FA);
  var color = const Color(0xff0E1C36);
  var teammate1 = '';
  var teammate2 = '';
  var teammate3 = '';
  var teammate4 = '';
  var teamname = '';
  var username = '';
  var docID = 'BtX9xm9ioncqthMpc6j5lZa86Of1';

  void getdata() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(docID)
        .get()
        .then((DocumentSnapshot docSnapshot) => {
              setState(() {
                teammate1 = docSnapshot.data()['Teammate1'];
                teammate2 = docSnapshot.data()['Teammate2'];
                teammate3 = docSnapshot.data()['Teammate3'];
                teammate4 = docSnapshot.data()['Teammate4'];
                teamname = docSnapshot.data()['Team_name'];
                username = docSnapshot.data()['username'];
              }),
            });
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
                  Text('\tMy Team', style: headingTextStyle(context, isDarkMode)),
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
                    teamname,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(username,
                                style:
                                    faqTileSubheadingTextStyle(context, isDarkMode)),
                            Expanded(child: SizedBox()),
                            Text('19BEC0123',
                                style:
                                    faqTileSubheadingTextStyle(context, isDarkMode)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              teammate1,
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              '19BEC0123',
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              teammate2,
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              '19BEC0123',
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              teammate3,
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              '19BEC0123',
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              teammate4,
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              '19BEC0123',
                              style: faqTileSubheadingTextStyle(context, isDarkMode),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35.0, right: 35.0, top: 45.0),
                    child: Divider(
                      color: color1,
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
                                color: color1,
                                fontSize: screenWidth(context) * 0.06,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'code:',
                                style: GoogleFonts.raleway(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Xs12Vd',
                                style:
                                    GoogleFonts.raleway(color: color1, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //SizedBox(width:2),

                      // FlatButton(
                      //   child: Image.asset(
                      //     'images/discord.png',
                      //     height: 40,
                      //     width: 40,
                      //   ),
                      //   onPressed: () {
                      //     launch('https://discord.com/invite/EfV4kK3Bgu');
                      //   },
                      // )
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
                    // child: RaisedButton(
                    //   color: color,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(8),
                    //       side: BorderSide(color: Colors.white, width: 3)),
                    //   child: Image.asset(
                    //     'images/discord.png',
                    //     height: 40,
                    //     width: 40,
                    //   ),
                    //   onPressed: () async {
                    //     // getdata();
                    //     await launch(
                    //         'https://discord.com/invite/EfV4kK3Bgu');
                    //   },
                    // ),
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
