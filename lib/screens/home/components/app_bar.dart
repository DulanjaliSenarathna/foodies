import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
          style: Theme.of(context).textTheme.headline6
              .copyWith(fontWeight: FontWeight.bold),
          children: [TextSpan(text: "Tasty",
            style: TextStyle(color: kSecondaryColor,),
          ),
            TextSpan(text: "Foodies",
                style: TextStyle(color: kPrimaryColor)
            )
          ]
      ),
    ),
    actions: <Widget> [
      IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"), onPressed: null)
    ],
  );
}