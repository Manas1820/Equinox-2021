import 'package:equinox_21/constants.dart';
import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
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
          child: ListView(
            children: [
              SizedBox(
                height: 45,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Have A Question ?',
                        style: headingTextStyle(context, isDarkMode)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('we got you covered',
                        style: faqTileSubheadingTextStyle(context, isDarkMode)),
                  ),
                ],
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("What are the rules?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Padding(
                        padding: expantionTilePaddingFaq(context),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                title: Text(
                                    "We want our Hack to be fun and fair to everyone. Your project should be started from scratch and worked on only during the 36 hours, and you may only incorporate outside resources (code, graphics, sound, etc) that are freely licensed and accessible to all participants equally. Of course, maintain a positive, respectful attitude toward your fellow hackers throughout the event. We ask that all attendees follow the MLH Code of Conduct.",
                                    style: faqTileSubheadingTextStyle(
                                        context, isDarkMode))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("What can I build?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "You can build whatever your heart desires, whether it’s a web app, mobile app, hardware hack, or an open source tool. Our main focus is to bring you a learning experience where you can have fun, ask questions, and experiment with technology.",
                                  style: faqTileSubheadingTextStyle(
                                      context, isDarkMode))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("Are hardware hacks allowed?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text("Yes, of course!",
                                  style: faqTileSubheadingTextStyle(
                                      context, isDarkMode))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("How much does it cost?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "Thanks to the generosity of our sponsors, we’re able to put up events like these for free.",
                                  style: faqTileSubheadingTextStyle(
                                      context, isDarkMode))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("How many people in a team?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text("Five sounds good.",
                                  style: faqTileSubheadingTextStyle(
                                      context, isDarkMode))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  child: ExpansionTile(
                    title: Text("I still have a question...",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "We’d be happy to help! Send the inquiry over to robovitics@vit.ac.in and we’ll get back to you as soon as possible or call +91 98673 48865.",
                                  style: faqTileSubheadingTextStyle(
                                      context, isDarkMode))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient:
                isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
          )),
    );
  }
}
