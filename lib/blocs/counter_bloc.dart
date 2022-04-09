import 'bloc.dart';
import 'dart:async';

class CounterBloc extends Bloc {
  double count = 0;
  // init the counter to 10
  String text1 = "Vincent";
  
  //************************************************************ 
  // constructor Bloc

  CounterBloc(this.text1) {
    // step 1 tu fais ton bloc et le counter marche normalement
    // do request
    print("[BLOC] Counter Bloc");
    
  }
  //************************************************************ 
  // creation du streamController
  final _streamRequestUserDataController = StreamController<double>();
  
  // entrées => Sink
  Sink<double> get sinkRequest => _streamRequestUserDataController.sink;

  // sorties => Le stream
  Stream<double> get streamRequest => _streamRequestUserDataController.stream;

  //************************************************************ 
  // logique de travail
  increment() {
    count = count + 1;
    sinkRequest.add(count);
  }

  decrement() {
    count = count - 1;
    sinkRequest.add(count);
  }
  //************************************************************ 
  // fermeture du bloc
  @override
  void dispose() {
    _streamRequestUserDataController.close();
  }
}
