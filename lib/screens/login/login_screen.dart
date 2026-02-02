import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final pixel = MediaQuery.of(context).size.width / 393 * 0.97;
    return Scaffold(
      body: Center(
        child: Text('Login Screen', style: TextStyle(fontSize: 24 * pixel)),
      ),
    );
  }
}
