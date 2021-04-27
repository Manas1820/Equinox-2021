import 'package:equinox_21/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HackersGuide extends StatefulWidget {
  const HackersGuide({Key key}) : super(key: key);

  @override
  _HackersGuideState createState() => _HackersGuideState();
}

class _HackersGuideState extends State<HackersGuide> {
  bool isDarkMode = false;
  @override
  void initState() {
    super.initState();
    manageTheme();
  }

  void manageTheme() {
    DateTime now = DateTime.now(); // current time
    print(now.hour);
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

  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3(), Item4(), Item5()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient:
                  isDarkMode ? darkBackgroundGradient : lightBackgroundGradient),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth(context) * 0.06,
                      top: screenHeight(context) * 0.04),
                  child: Text("Hacker's Guide",
                      style: headingTextStyle(context, isDarkMode)),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight(context) * 0.7,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: screenHeight(context) * 0.7,
                      width: screenWidth(context),
                      child: Card(
                        color: Colors.transparent,
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(cardList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.yellow : Colors.grey,
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/hackers_guide_1.png',
              height: screenHeight(context) * 0.6,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/hackers_guide_2.png',
              height: screenHeight(context) * 0.6,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/hackers_guide_3.png',
              height: screenHeight(context) * 0.6,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/hackers_guide_4.png',
              height: screenHeight(context) * 0.6,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/hackers_guide_5.png',
              height: screenHeight(context) * 0.6,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
