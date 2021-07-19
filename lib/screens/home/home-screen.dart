import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/constants.dart';
import 'package:foodies/screens/home/components/app_bar.dart';
import 'package:foodies/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}


