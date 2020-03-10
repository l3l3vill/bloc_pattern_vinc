import 'package:flutter/material.dart';


class MainScaffold extends StatelessWidget {

  final String title;
  MainScaffold({this.title});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title : Text('multiple BLoCs'),
        ),
      body: Center(
        child: Text('Salut les codeurs'),
      ),
    );
  }
}