import 'bloc.dart';
import 'dart:async';


class CounterBloc extends Bloc {
  int count = 0;
  CounterBloc() { // à l'init donner une valeur de départ avec le int ci-dessus
    sink.add(count);
  }
  final _streamController = StreamController<int>(); // creation du streamController
  // entrées => Sink
  Sink<int> get sink => _streamController.sink;

  // logique de travail
  increment() {
    count = count + 1;
    sink.add(count);
  }
  decrement() {
    count = count - 1;
    sink.add(count);
  }

  // sorties => Le stream
  Stream<int> get stream => _streamController.stream;

  // fermeture du bloc
  @override
  void dispose() => _streamController.close();

}