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
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight(context) * 0.04,
                    left: screenWidth(context) * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Have A Question ?',
                          style: headingTextStyle(context, isDarkMode)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('We got you covered',
                          style: headingSubTextStyle(context, isDarkMode)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: expantionTilePaddingFaq(context),
                child: Card(
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
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
                                    "To keep this hack fun and fair for everyone, we urge our participants to incorporate only freely available or non-copyright resources (code, graphics, sound, etc.) in their projects./nBe sure to go through the MLH Code of Conduct.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("What are the perks of participating in Equinox?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "A plethora of knowledge, keen problems solving skills and a rich technical skillset are in the cards! Additionally, Equinox will also serve as a platform to mingle with others in the tech community. Cash prizes, schawgs and other perks are in store for the winners!",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("Can I start working on the hack before the event?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "You can research thoroughly on your ideas before the start of the event, but we insist you start working on the projects only after the hack begins to be fair to each participant and to build on your time management too!",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("How big can my team be? ",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "You can register solo but as they say “the more the merrier”, so we advise you to show up with 2-4 stars in your cluster. If you do not have a team, you can interact with the other participants over our Discord Server and form your ideal cluster of stars!",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("Do I have to pay to register?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "Not at all! Thanks to the generosity of our sponsors, we are able to conduct events like Equinox for free.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("Who all can participate?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "Equinox’21 is open to all the students who are currently enrolled in a University, or have graduated within the last 12 months.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("What if I don’t know how to code? ",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "In this never ending world where technologies and innovation are the future, all you need is the  will to learn, the curiosity to explore and determination to bring your idea to life. Equinox is the right platform to kick start your coding journey.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("What if this is my first hack?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "Whether you’re new to hacks or a seasoned pro, there’s something for everyone! In this case, Equinox will prove to be the Big Bang to your hacking journey. You can hone your skills with creativity and zeal, and take back with you substantial knowledge and experience.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("What can I build in the hack?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "If you can think it, you can build it! Be it websites, android apps, hardware or electronics, these are just the tip of the iceberg. Express your creativity, ingenuity and determination to explore anything you want. ",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("Who will own my ideas and projects?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "If you can think it, you can build it! Be it websites, android apps, hardware or electronics, these are just the tip of the iceberg. Express your creativity, ingenuity and determination to explore anything you want. ",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("Who will own my ideas and projects?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "We know that you put your heart and soul into your ideas and their implementations, so you will be the sole owners of your projects.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text("What is the venue of the hackathon?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "You have till 25th March, 2021, 23:59 IST to register yourself for the blast off to the best 36 hours of hacking you will ever have.",
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
                  color: isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                  child: ExpansionTile(
                    backgroundColor:
                        isDarkMode ? tileBackgroundDark : tileBackgroundLight,
                    title: Text(
                        "404: Question not found, maybe a black hole ate it?",
                        style: faqTileHeadingTextStyle(context, isDarkMode)),
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                              title: Text(
                                  "Don’t worry you stray comet, we won’t let you be lost. We’ve got your back! Send in your query over to equinox.robovitics@gmail.com or contact +91 98980 56388 and we will be more than happy to help!",
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
            gradient: isDarkMode ? darkBackgroundGradient : lightBackgroundGradient,
          )),
    );
  }
}
