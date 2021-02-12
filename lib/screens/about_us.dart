import 'package:equinox_21/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Text('About us',
                      style: headingTextStyle(context, isDarkMode)),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('Equinox',
                                  style: GoogleFonts.raleway(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  'Equinox is a 36-Hour hackathon in which the participants’ ideas will not just be limited to problem statements based on Web development, hardware, Artificial Intelligence etc. The hack aims to crank the creative cogs of the participants. You have the opportunity and the resources to express your creativity, ingenuity and determination to explore anything you want. ',
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('RoboVITics',
                                  style: GoogleFonts.raleway(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  'RoboVITics was the first technical club to be set up in VIT, Vellore back in 2008. Since then, the club actively works on many research projects and conducts national level events throughout the year. Some of our successful events include Hands on Robotics, Machine Design with Fusion 360 and Cosmos 360 and Robowars, which attracts a footfall of 30,000+ students every year. Team Orcus, a subset of RoboVITics, has gained international recognition, due to its impressive performance in combat robotics.',
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('Sponsors',
                                  style: GoogleFonts.raleway(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset(
                                'images/image 89.png',
                              ),
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text('Organisers',
                                  style: GoogleFonts.raleway(
                                      fontSize: 21,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    'images/Group 30.png',
                                  )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Full Name',
                                      style: GoogleFonts.raleway(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('"A line by the oragniser"',
                                      style: GoogleFonts.raleway(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    'images/Group 30.png',
                                  )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Full Name',
                                      style: GoogleFonts.raleway(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('"A line by the oragniser"',
                                      style: GoogleFonts.raleway(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    'images/Group 30.png',
                                  )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Full Name',
                                      style: GoogleFonts.raleway(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('"A line by the oragniser"',
                                      style: GoogleFonts.raleway(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(
                                height: 35,
                              ),
                            ],
                          ),
                        )),
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
