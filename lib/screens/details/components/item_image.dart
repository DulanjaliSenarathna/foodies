import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key key, this.imgSrc,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(imgSrc,
      height: size.height * 0.25,
      fit: BoxFit.fill,
      width: double.infinity,
    );
  }
}