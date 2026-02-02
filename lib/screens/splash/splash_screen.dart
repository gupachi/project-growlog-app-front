import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final pixel = MediaQuery.of(context).size.width / 393 * 0.97;
    return Scaffold(
      body: Center(
        child: Text('Splash Screen', style: TextStyle(fontSize: 24 * pixel)),
      ),
    );
  }
}
