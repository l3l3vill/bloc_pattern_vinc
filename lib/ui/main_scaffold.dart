import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/blocs/bloc_provider.dart';
import 'package:multipleblocinflutterapp/blocs/counter_bloc.dart';
import 'package:multipleblocinflutterapp/blocs/text_bloc.dart';
import 'package:multipleblocinflutterapp/common/quote/CreateQuoteElement.dart';
import 'package:multipleblocinflutterapp/ui/QuoteElementBloc.dart';
import 'package:multipleblocinflutterapp/ui/counter_screen.dart';
import 'package:multipleblocinflutterapp/ui/text_screen.dart';


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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Choisissez votre bloc'),
            RaisedButton(
              child: Text('Compteur'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return CounterScreen();
                  }),
                );
              },

            ),
            RaisedButton(
              child: Text('Texte'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider<TextBloc>(
                      child: TextScreen(title: 'texteee'),
                      bloc: TextBloc(),
                    );
                  }),
                );
              },

            ),

            RaisedButton(
              child: Text('Create quote Element'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider<CreateQuoteElementBloc>(
                        child: CreateQuoteElement(),
                        bloc: CreateQuoteElementBloc(),
                      );
                    }),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}