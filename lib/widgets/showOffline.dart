import 'package:equinox_21/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ShowOffline extends StatefulWidget {
  final bool isDarkMode;
  const ShowOffline({
    @required this.isDarkMode,
    Key key,
  }) : super(key: key);

  @override
  _ShowOfflineState createState() => _ShowOfflineState();
}

class _ShowOfflineState extends State<ShowOffline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FeatherIcons.wifiOff,
                  size: 64,
                  color: Colors.red[300],
                ),
                Text("It seems you are offline!",
                    style: showOfflineHeadingText(context, widget.isDarkMode),
                    textAlign: TextAlign.center),
                Text(
                  "Please check you internet connectivity",
                  style: showOfflineSubheadingText(context, widget.isDarkMode),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: widget.isDarkMode
              ? darkBackgroundGradient
              : lightBackgroundGradient,
        ),
      ),
    );
  }
}
