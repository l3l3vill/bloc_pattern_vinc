
import 'package:flutter/material.dart';

class MyText extends Text {
  MyText(
      data,
      {
        TextAlign textAlign : TextAlign.center,
        double fontSize: 17.0,
        fontStyle: FontStyle.normal,
        color: Colors.white
    }) : super (
      data,
      textAlign : textAlign,
      style: TextStyle (
        fontSize: fontSize,
        fontStyle: fontStyle,
        color: color,
      ),
  );
}