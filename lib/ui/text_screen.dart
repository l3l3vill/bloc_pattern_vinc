import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/blocs/bloc_provider.dart';
import 'package:multipleblocinflutterapp/blocs/text_bloc.dart';

class TextScreen extends StatelessWidget {
 final String title;
  TextScreen({@required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final textBloc = BlocProvider.of<TextBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: 'Saisissez votre texte'),
            onChanged: ((string) => textBloc.updateText(string)),
          ),
          StreamBuilder<String>(
            stream: textBloc.stream,
            builder: (context, snaphot) {
              if (snaphot.data == null) {
                return Text('snapshot is null');
              } else if (snaphot.hasData) {
                return Text(snaphot.data);
              } else {
                return Text("Snapshot n'a pas de données");
              }
            },
          ),
        ],
      ),
    );
  }

}