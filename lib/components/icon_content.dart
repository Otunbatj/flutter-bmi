import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconImage;
  final MainAxisAlignment mainAxisAlignment;
  final double iconSize;
  final TextStyle textStyle;
  final String iconContentText;

  IconContent(
      {@required this.iconImage,
      @required this.mainAxisAlignment,
      @required this.iconSize,
      @required this.textStyle,
      @required this.iconContentText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconImage, size: iconSize),
        SizedBox(height: 15.0),
        Text(
          iconContentText.toUpperCase(),
          style: textStyle,
        )
      ],
    );
  }
}
