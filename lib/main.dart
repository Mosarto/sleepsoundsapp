import 'package:flutter/material.dart';
import 'package:sleepsoundsapp/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sleep Sounds',
      theme: ThemeData(
        fontFamily: 'SFProRounded',
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}
