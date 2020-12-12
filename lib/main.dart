import 'package:flutter/material.dart';
import 'NextScreen.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // callback function
  void completed() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => NextPage()));
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), completed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Splash\nScreen',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50.0,
            fontFamily: 'Times New Roman',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
