import 'package:flutter/material.dart';
import 'package:foodies/screens/home/home-screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodies',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
         body1: TextStyle(color: kSecondaryColor),
          body2: TextStyle(color: kSecondaryColor)
        )
      ),
      home: HomeScreen(),
    );
  }
}
