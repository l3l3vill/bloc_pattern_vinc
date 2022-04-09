import 'package:flutter/cupertino.dart';

class PaddingWith extends Padding  {
  PaddingWith({
    @required widget:Widget,
    double top: 10.0,
    double left: 0.0,
    double right: 0.0,
    double bottom: 0.0,
    }): super (
      padding: EdgeInsets.only (
          top: top,
          left: left,
          right: right,
          bottom: bottom,
      ),
    child: widget,
  );
}