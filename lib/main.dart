import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/ui/main_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple BLocs',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainScaffold(title: 'Flutter Demo Home Page'),
    );
  }
}
