import 'package:equinox_21/widgets/Email_Signin_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EmailSigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff0E1C36);
    var color1 = const Color(0xffFBD00D);
    return Scaffold(
      resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [

                Image(image: AssetImage('images/logo.png'),
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.width*0.7,
                ),
                Divider(
                    color: color1,
                  thickness: 6,
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: EmailSignInForm(),
                    )
                ),
              ],
            )),
        ),
      backgroundColor: color,
    );
  }
}
