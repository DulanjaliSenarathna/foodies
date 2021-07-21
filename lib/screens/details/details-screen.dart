import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/constants.dart';
import 'package:foodies/screens/details/components/app_bar.dart';
import 'package:foodies/screens/details/components/body.dart';
import 'package:foodies/screens/details/components/item_image.dart';
import 'package:foodies/screens/details/components/order_button.dart';
import 'package:foodies/screens/details/components/title_price_rating.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}





