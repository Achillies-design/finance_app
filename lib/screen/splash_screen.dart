import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import "package:splashscreen/splashscreen.dart" show SplashScreen;

//import 'home_screen.dart';
import 'login_screen.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginScreen(),
      title: Text(
        'Welcome to capital Point Five',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25.0),
      ),
      image: Image.asset('assets/images/pfl.jpg'),
      photoSize: 100,
    );
  }
}
