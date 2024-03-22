import 'package:dietplan/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diet Plan',
      theme: ThemeData(
        // Configure your theme here
        // For example:
        // primaryColor: Colors.green,
        // accentColor: Colors.blue,
        // textTheme: TextTheme(
        //   headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //   bodyText1: TextStyle(fontSize: 16),
        // ),
      ),
      home: SplashScreen(),
    );
  }
}
