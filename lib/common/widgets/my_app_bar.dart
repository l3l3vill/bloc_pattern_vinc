

import 'package:flutter/material.dart';

class AppBarCustom extends AppBar {

  final String titleString;
  final bool centerTitle;
  final double elevation;
  final Color backgroundColor;

  AppBarCustom({@required this.titleString, @required this.centerTitle, @required this.elevation, @required this.backgroundColor }) : super (
      title: Text(titleString),
      centerTitle: centerTitle,
      elevation: elevation,
      backgroundColor: backgroundColor,

  );
}

class AppBarMenuCustom extends AppBar {
  final String titleString;
  final bool centerTitle;
  final double elevation;
  final Color backgroundColor;


  AppBarMenuCustom({@required this.titleString, @required this.centerTitle, @required this.elevation, @required this.backgroundColor}) : super (
      title: Text(titleString),
      centerTitle: centerTitle,
      elevation: elevation,
      backgroundColor: backgroundColor,
  );
}