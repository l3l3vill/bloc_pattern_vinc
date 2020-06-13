import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/blocs/bloc_provider.dart';
import 'package:multipleblocinflutterapp/blocs/counter_bloc.dart';


class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blocCounter = BlocProvider.of<CounterBloc>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Compteur')),
      body: StreamBuilder<int>(
        stream: blocCounter.stream,
        builder: (context, snapshot){
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Mon compteur'),
              Text('Compte actuel: ${snapshot.data}'),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      blocCounter.increment();
                    },

                  ),
                  RaisedButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      blocCounter.decrement();
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),

    );
  }
}