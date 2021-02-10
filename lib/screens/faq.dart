import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorb = const Color(0xff0E1C36);
    return Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Frequently Asked Questions',
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("What are the rules?",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text(
                            "We want our Hack to be fun and fair to everyone. Your project should be started from scratch and worked on only during the 36 hours, and you may only incorporate outside resources (code, graphics, sound, etc) that are freely licensed and accessible to all participants equally. Of course, maintain a positive, respectful attitude toward your fellow hackers throughout the event. We ask that all attendees follow the MLH Code of Conduct.",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("What can I build?",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text(
                            "You can build whatever your heart desires, whether it’s a web app, mobile app, hardware hack, or an open source tool. Our main focus is to bring you a learning experience where you can have fun, ask questions, and experiment with technology.",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("Are hardware hacks allowed?",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text("Yes, of course!",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("How much does it cost?",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text(
                            "Thanks to the generosity of our sponsors, we’re able to put up events like these for free.",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("How many people in a team?",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text("Five sounds good.",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpansionTile(
                  title: Text("I still have a question...",
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  children: [
                    ListTile(
                        title: Text(
                            "We’d be happy to help! Send the inquiry over to robovitics@vit.ac.in and we’ll get back to you as soon as possible or call +91 98673 48865.",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: colorb);
  }
}
