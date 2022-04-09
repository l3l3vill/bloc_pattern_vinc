import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/blocs/bloc_provider.dart';
import 'package:multipleblocinflutterapp/blocs/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc bloc = BlocProvider.of<CounterBloc>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Compteur ${bloc.text1}')),
      body: Center(
        child: Column(
          children: [
            StreamBuilder<double>(
              stream: bloc.streamRequest,
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Text('snapshot is null');
                } else if (!snapshot.hasData) {
                  return CircleToload.Adaptative();
                  ;
                } else {
                  return Column(
                    children: [
                      Text(snapshot.data.name),
                      Text(snapshot.data.age)
                    ],
                  );
                }
              },
            ),
            FlatButton(
                onPressed: () {
                  bloc.increment();
                },
                child: Text("+")),
            FlatButton(
                onPressed: () {
                  blocCounter.decrement();
                  setState();
                },
                child: Text("-"))
          ],
        ),
      ),
    );
  }
}
