import 'package:flutter/cupertino.dart';

class AppSize {
  heightScreen (context) => MediaQuery.of(context).size.height;
  widthScreen (context) => MediaQuery.of(context).size.width;
}