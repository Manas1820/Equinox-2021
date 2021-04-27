import 'package:equinox_21/widgets/Email_Signin_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class EmailSigninPage extends StatefulWidget {
  @override
  _EmailSigninPageState createState() => _EmailSigninPageState();
}

class _EmailSigninPageState extends State<EmailSigninPage> {
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
    var color1 = const Color(0xffFBD00D);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image(
                  image: isDarkMode
                      ? AssetImage(
                          'images/logo.png',
                        )
                      : AssetImage('images/Logo-2.png'),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.7,
                ),
                Divider(
                  color: color1,
                  thickness: 6,
                ),
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: EmailSignInForm(),
                )),
              ],
            )),
      ),
      backgroundColor: isDarkMode ? darkBackground : lightBackground,
    );
  }
}
