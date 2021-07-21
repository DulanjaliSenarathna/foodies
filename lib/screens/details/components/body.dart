import 'package:flutter/material.dart';
import 'package:foodies/constants.dart';
import 'package:foodies/screens/details/components/item_image.dart';
import 'package:foodies/screens/details/components/order_button.dart';
import 'package:foodies/screens/details/components/title_price_rating.dart';

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
    Size size = MediaQuery.of(context).size;
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
          ),
          Text("A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.Cheeseburgers can include variations.",
            style: TextStyle(height: 1.5),
          ),
          SizedBox(height: size.height*0.1,),
          OrderButton(size: size, press: (){},)
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