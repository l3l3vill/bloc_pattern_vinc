import 'dart:ui';

import 'package:flutter/material.dart';

class StringExtension {

  Color changeTextColor(String text) {
    if (text == "Informations manquantes") {
      return Colors.orange;
    } else {
      return Colors.black;
    }

  }
  String emptyStringToMessage(String text) {
    if (text == "" && text != null) {
      text = "Informations manquantes";
    } else {
      return text;
    }
  }


}