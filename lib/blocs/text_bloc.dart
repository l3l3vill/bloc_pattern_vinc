import 'dart:async';
import 'bloc.dart';

class TextBloc extends Bloc {
  final _streamController = StreamController<String>();
  Stream<String> get stream => _streamController.stream;
  Sink<String> get sink => _streamController.sink;

  updateText(String string) {
    sink.add(string);
  }

  @override
  void dispose() => _streamController.close();
}