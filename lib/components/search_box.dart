import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodies/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical:5 , horizontal:25 ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: kSecondaryColor.withOpacity(0.32)
          )
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search Here",
            hintStyle: TextStyle(
                color: kSecondaryColor
            )
        ),
      ),
    );
  }
}