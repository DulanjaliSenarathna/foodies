import 'package:flutter/material.dart';
import 'package:foodies/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "Macdonald's",
            press: (){},
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Burger & Beer",
            shopName: "Bakers Pot",
            press: (){},
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopName: "Macdonald's",
            press: (){},
          ),
        ],
      ),
    );
  }
}