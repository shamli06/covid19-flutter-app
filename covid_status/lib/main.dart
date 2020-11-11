import 'package:flutter/material.dart';
import 'package:covid_status/screens/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.greenAccent,
        scaffoldBackgroundColor: Colors.white
      ),
      home: StatusScreen(),
    );
  }
}

