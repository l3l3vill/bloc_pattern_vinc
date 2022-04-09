import 'dart:developer';

class DiagTime {

  Stopwatch timeToRequest(Function test) {


    final stopwatch = Stopwatch()..start();
    test;
    print('doSomething() executed in ${stopwatch.elapsed}');
    /*final stopwatch = Stopwatch()..start();
    doSomething();
    print('doSomething() executed in ${stopwatch.elapsed}');*/

  }



  void test () {
    Timeline.startSync('interesting function');
    // iWonderHowLongThisTakes();
    Timeline.finishSync();
  }


}