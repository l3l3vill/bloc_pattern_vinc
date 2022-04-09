import 'dart:convert';

import 'package:flutter/cupertino.dart';


class JsonExtension {

  encodeToJson(Object objet) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
        String prettyprint = encoder.convert(objet);
        debugPrint(prettyprint);
  }



}