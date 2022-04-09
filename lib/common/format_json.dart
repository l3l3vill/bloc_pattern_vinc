import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

class FormatTo {


  formatJsonToPrettyJson(Map json) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String prettyPrint = encoder.convert(json);
    debugPrint(prettyPrint);
  }

  formatEncodeToJson(Map json) {
    Map<String, dynamic> jsonData = json;
    print(JsonEncoder().convert(jsonData));
  }

  String formatUrl(String string) {
    var urlEncoded = Uri.encodeFull(string);
    return urlEncoded;
  }

}