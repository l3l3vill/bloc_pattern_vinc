import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orion_delivery/model/intervention_model.dart';


class TimeExtension {

  String getCurrentTime() {
    DateTime dateTime = DateTime.now();
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
  }
  String getDateFront() {
    DateTime dateTime = DateTime.now();
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
  String formatDateToFront(DateTime date) {
    DateTime dateTime = date;
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
  String formatDateToUrl(DateTime date) {
    DateTime dateTime = date;
    return DateFormat('date_dd-MM-yyyy__HH_mm').format(dateTime);
  }
  String getDateBack() {
    DateTime dateTime = DateTime.now();
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }
  String formatDateBack(DateTime time) {
    return DateFormat('yyyy-MM-dd').format(time);
  }
  String displayHour() {
    DateTime dateTime = DateTime.now();
    return DateFormat('HH:mm').format(dateTime);
  }

  String getHourBack(DateTime time) {
    return DateFormat('HH:mm').format(time);
  }

  String formatHourToString() {
    DateTime dateTime = DateTime.now();
    return DateFormat('HH:mm').format(dateTime);
  }
  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.Hm();  //"6:00 AM"
    return format.format(dt);
  }
  // TimeStamp
    int dateTimeToTimeStamp(DateTime dateTime) {
     final convert = dateTime.millisecondsSinceEpoch / 1000;
     var convertToInt = convert.toInt();
      return convertToInt;
   }

   DateTime convertTimeStampToDateTime(int timeStamp) {


      var dateToTimeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
      return dateToTimeStamp;

     //var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

   }
  String convertTimeStampToHumanDate(int timeStamp) {
    var dateToTimeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    return DateFormat('dd/MM/yyyy').format(dateToTimeStamp);
  }
   String convertTimeStampToHumanHour(int timeStamp) {
       var dateToTimeStamp = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
       return DateFormat('HH:mm').format(dateToTimeStamp);
   }
   constructDateAndHourRdvToTimeStamp(DateTime dateTime, TimeOfDay time ) {
   final constructDateTimeRdv = dateTimeToTimeStamp(DateTime(dateTime.year, dateTime.month, dateTime.day, time.hour, time.minute)) ;
    if (constructDateTimeRdv != null) {
     return constructDateTimeRdv;
    }
  }

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

  filterListInterventionModelByHourAscending(List<InterventionModel> tab) {
    tab.sort((a, b) => a.timeIntervention.hourRdvTimeStamp.compareTo(b.timeIntervention.hourRdvTimeStamp));
  }
  filterListInterventionModelByHourDescending(List<InterventionModel> tab) {
    tab.sort((b, a) => a.timeIntervention.hourRdvTimeStamp.compareTo(b.timeIntervention.hourRdvTimeStamp));
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