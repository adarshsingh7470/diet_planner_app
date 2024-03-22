import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login_screen.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: LoginScreen(),
      image: Image.asset("assets/images/Myicon.png"),
      loadingText: Text("Loading"),
      photoSize: 200.0,
      loaderColor: Colors.blue,
      title: Text(
        '      Made by\nNesma Alabyad',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
