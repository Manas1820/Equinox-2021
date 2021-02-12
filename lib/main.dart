import 'package:equinox_21/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const MethodChannel _channel =
      MethodChannel('testing.com/channel_test');
  Map<String, String> channelMap = {
    "id": "id",
    "name": "Show Notifications",
    "description": "All Notifications",
  };

  void _createNewChannel() async {
    try {
      await _channel.invokeMethod('createNotificationChannel', channelMap);
      setState(() {});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _createNewChannel();
  }

  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
        app: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ));
  }
}
