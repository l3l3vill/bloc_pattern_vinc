import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TimeExtension {



   // mode presentation

   int addOneDayTimeSpamp(int currentTimeStamp, DateTime dateTime) {
      return currentTimeStamp + 86400 ;
   }
   int soustractOneDayTimeStamp(int currentTimeStamp, DateTime dateTime) {
     return currentTimeStamp - 86400 ;
   }








   filterDataByAscending(List<int> tab) {
     tab.sort((a, b) => a.compareTo(b));
   }
   filterDataByDescending(List<int> tab) {
     tab.sort((b, a) => a.compareTo(b));
   }










  String displayDifferenceBetweenTwoHours( beginHour , String endHour) {
    DateTime dateTime = DateTime.now();

    DateTime begin = DateTime.parse(beginHour);
    DateTime end = DateTime.parse(endHour);
    var difference = end.difference(begin);
    return "$difference";

  }
/*  String displayDifferenceBetweenTwoTimeStamp(int beginHour , int endHour) {
    DateTime dateTime = DateTime.now();
    print("${endHour} - ${beginHour}");
    DateTime begin = DateTime.parse(beginHour);
    DateTime end = DateTime.parse(endHour);
    var difference = endHour.difference(begin);
    return "$difference";

  }*/

}