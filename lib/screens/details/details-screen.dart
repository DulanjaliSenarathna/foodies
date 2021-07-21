import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/constants.dart';
import 'package:foodies/screens/details/components/app_bar.dart';
import 'package:foodies/screens/details/components/item_image.dart';
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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
        )
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "Macdonald's"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 10,
            onRatingChanged: (value){},
          )
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: kSecondaryColor,
            ),
            SizedBox(width: 10,),
            Text(name)
          ],
        );
  }
}



