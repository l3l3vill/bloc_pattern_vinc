import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:orion_delivery/model/enum/enumState.dart';

class AppColors {

  static const Color backgroundColorApp = Color.fromRGBO(242, 245, 247, 1);
  static const Color blueLogoApp = Color.fromRGBO(67, 146, 179, 1);
  static const Color initColorButton = Color.fromRGBO(102, 94, 241, 1);
  static const Color greenLightLogScreen = Color.fromRGBO(168, 200, 196, 1);
  static const Color greenDarkLogScreen = Color.fromRGBO(37, 120, 104, 1);
  static const Color lightBlueMisylColor = Color.fromRGBO(212, 230, 246, 1);
  static const Color darkBlueMisylColor = Color.fromRGBO(50, 138, 214, 1);
  static const Color lightGreyMisylColor = Color.fromRGBO(227, 230, 233, 1);
  static const Color darkGreyMisylColor = Color.fromRGBO(121, 136, 149, 1);
  static const Color lightPinkMisylColor = Color.fromRGBO(245, 216, 221, 1);
  static const Color darkPinkMisylColor = Color.fromRGBO(209, 71, 93, 1);
  static const Color lightGreenMisylColor = Color.fromRGBO(208, 238, 235, 1);
  static const Color darkGreenMisylColor = Color.fromRGBO(39, 173, 159, 1);
  static const Color lightPurpleMisylColor = Color.fromRGBO(215, 158, 245, 1);
  static const Color darkPurpleMisylColor = Color.fromRGBO(169, 37, 237, 1);
  static const Color lightCyanMisylColor = Color.fromRGBO(182, 231, 252, 1);
  static const Color darkCyanMisylColor = Color.fromRGBO(13, 165, 203, 1);
  static const Color lightOrangeMisylColor = Color.fromRGBO(247, 227, 167, 1);
  static const Color darkOrangeMisylColor = Color.fromRGBO(254, 192, 3, 1);
  static const Color lightYellowGreenMisylColor = Color.fromRGBO(201, 215, 189, 1);
  static const Color darkYellowGreenMisylColor = Color.fromRGBO(122, 169, 85, 1);
  static const Color lightRedMisylColor = Color.fromRGBO(160, 247, 217, 1);
  static const Color darkRedMisylColor = Color.fromRGBO(5, 218, 145, 1);
  static const Color darkBlackMisylColor = Color.fromRGBO(76, 92, 106, 1);



  static Color boxShadow = Colors.black.withOpacity(0.07);

  // Background colors
  static const Color scaffoldBackground = _almostWhite;


  // primary swatch

  MaterialColor white = const MaterialColor(
    0xFFFFFFFF,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(0xFFFFFFFF),
      600: const Color(0xFFFFFFFF),
      700: const Color(0xFFFFFFFF),
      800: const Color(0xFFFFFFFF),
      900: const Color(0xFFFFFFFF),
    },
  );


  // Theme colors


  static const Color primary = _almostBlack;
  static const Color primaryTextDark = _almostBlack;
  static const Color primaryTextLight = Colors.white;
  static const Color primaryAction = _blue;
  static const Color secondaryText = _greyDarker;
  static const Color secondaryAction = _almostBlack;
  static const Color accent = _turquoiseGreen;
  static const Color tertiaryDark = _grey;
  static const Color tertiaryLight = _blueGrey;

  static const Color primaryWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color primaryBlack = Color.fromRGBO(0, 0, 0, 1.0);

  // REFUND
  static const Color zoneText = Color.fromRGBO(245, 245, 245, 1.0);
  static const Color signature = Color.fromRGBO(82, 178, 155, 1.0);

  static const Color blueEdit = Color.fromRGBO(82, 149, 178, 1.0);
  static const Color tag = Color.fromRGBO(38, 80, 97, 1.0);
  static const Color eraseCancel = Color.fromRGBO(191, 0, 0, 1.0);
  static const Color confirm = Color.fromRGBO(59, 77, 126, 1.0);
  static const Color cancel = Color.fromRGBO(216, 219, 222, 1.0);
  static const Color textDescriptionCell = Color.fromRGBO(236, 236, 236, 1.0);

  static const Color textColorZoneText = Color.fromRGBO(172, 172, 172, 1.0);
  static const Color menuBurger = Color.fromRGBO(241, 241, 241, 1.0);


  // Base colors
  static const Color _blue = Color.fromRGBO(97, 107, 202, 1.0);
  static const Color _almostBlack = Color.fromRGBO(18, 41, 55, 1.0);
  static const Color _almostWhite = Color.fromRGBO(242, 242, 242, 1.0);
  static const Color _turquoiseGreen = Color.fromRGBO(0, 255, 160, 1.0);
  static const Color _grey = Color.fromRGBO(216, 219, 222, 1.0);
  static const Color _greyDarker = Color.fromRGBO(136, 147, 155, 1.0);
  static const Color _blueGrey = Color.fromRGBO(60, 78, 89, 1.0);


  static const Color _colorBegin = Color.fromRGBO(28, 113, 37, 1.0);
  static const Color _colorToDo = Color.fromRGBO(235, 225, 58, 1.0);
  static const Color _colorAbs = Color.fromRGBO(213, 12, 12, 1.0);
  static const Color _colorCancel = Color.fromRGBO(255, 87, 34, 1.0);
  static const Color _colorDone = Color.fromRGBO(175, 255, 93, 1.0);
  static const Color _colorReport = Color.fromRGBO(156, 39, 176, 1.0);


  Color changeTextColorWithProgress(String state) {
    /*if (state == "À faire") {
      return Colors.black;
    } else if (state == "begin") {
      return Colors.white;
    } else if (state == "Absence Client") {
      return Colors.white;
    } else if (state == "cancel") {
      return Colors.white;
    } else if (state == "Terminée") {
      return Colors.black;
    } else if (state == "report") {
      return Colors.white;
    } else if (state == "Raisons personnelles") {
      return Colors.white;
    } else if (state == "Autre motif") {
      return Colors.white;
    }*/
    if (state == "À faire") {
      return AppColors.tag;
    } else if (state == "begin") {
      return AppColors.tag;
    } else if (state == "Absence Client") {
      return AppColors.tag;
    } else if (state == "cancel") {
      return AppColors.tag;
    } else if (state == "Terminée") {
      return AppColors.tag;
    } else if (state == "report") {
      return AppColors.tag;
    } else if (state == "Raisons personnelles") {
      return AppColors.tag;
    } else if (state == "Autre motif") {
      return AppColors.tag;
    } else {
      return AppColors.tag;
    }
  }

  Color changeBorderColorWithProgress(String state) {
    if (state == "À faire") {
        //return AppColors._colorToDo;
        return AppColors.tag;
    } else if (state == "begin") {
       //return AppColors._colorBegin;
       return AppColors.tag;
    } else if (state == "Absence Client") {
        //return AppColors._colorAbs;
        return AppColors.tag;
    } else if (state == "Autre motif") {
        //return Colors.deepPurpleAccent;
        return AppColors.tag;
    } else if (state == "Terminée") {
        //return AppColors._colorDone;
        return AppColors.tag;
    } else if (state == "report") {
      //return AppColors._colorReport;
      return AppColors.tag;
    } else if (state == "Raisons personnelles") {
      //return Colors.cyan;
      return AppColors.tag;
    } else {
      return AppColors.tag;
    }
  }

  Color changeColorClipOval(String state) {
    if (state == "À faire") {
      return Colors.yellow ;
    } else if (state == "begin") {
      return Colors.yellow ;
    } else if (state == "Absence Client") {
      return Colors.orange;
    } else if (state == "Autre motif") {
      return Colors.orange;
    } else if (state == "Terminée") {
      return Colors.green;
    } else if (state == "report") {
      return Colors.orange;
    } else if (state == "Raisons personnelles") {
      return Colors.orange;
    }
  }
  Color changeColorClipOvalToInt(EnumState state) {
    if (state == EnumState.notBegin) {
      return Colors.yellow ;
    } else if (state == EnumState.inProgress) {
      return Colors.yellow ;
    } else if (state == EnumState.cancel) {
      return Colors.orange;
    } else if (state == EnumState.cancel) {
      return Colors.orange;
    } else if (state == EnumState.done) {
      return Colors.green;
    } else if (state == EnumState.report) {
      return Colors.orange;
    } else if (state == EnumState.cancel) {
      return Colors.orange;
    }
  }

  IconData changeIconClipOval(String state) {

    if (state == "À faire") {
      return Icons.hourglass_empty_outlined;
    } else if (state == "begin") {
      return Icons.clear;
    } else if (state == "Absence Client") {
      return Icons.clear;
    } else if (state == "Autre motif") {
      return Icons.clear;
    } else if (state == "Terminée") {
      return Icons.done;
    } else if (state == "report") {
      return Icons.report_problem_outlined;
    } else if (state == "Raisons personnelles") {
      return Icons.report_problem_outlined;
    }
  }
  IconData changeIconClipOvalToInt(EnumState state) {

    if (state == EnumState.notBegin) {
      return Icons.hourglass_empty_outlined;
    } else if (state == EnumState.inProgress) {
      return Icons.clear;
    } else if (state == EnumState.cancel) {
      return Icons.clear;
    } else if (state == EnumState.cancel) {
      return Icons.clear;
    } else if (state == EnumState.done) {
      return Icons.done;
    } else if (state == EnumState.report) {
      return Icons.report_problem_outlined;
    } else if (state == EnumState.cancel) {
      return Icons.report_problem_outlined;
    }
  }

  Color changeColorBackgroundContainerWithProgress(String state) {
    if (state == "À faire") {
      return AppColors.tag;
      //return AppColors._colorToDo;
    } else if (state == "begin") {
      return AppColors.tag;
      //return AppColors._colorBegin;
    } else if (state == "Absence Client") {
      return AppColors.tag;
      //return AppColors._colorAbs;
    } else if (state == "Autre motif") {
      return AppColors.tag;
      //return Colors.deepPurpleAccent;
    } else if (state == "Terminée") {
      return AppColors.tag;
      //return AppColors._colorDone;
    } else if (state == "report") {
      return AppColors.tag;
      //return AppColors._colorReport;
    }else if (state == "Raisons personnelles") {
      return Colors.cyan;
    }

  }

  Color changeColorBackgroundContainerWithProgressToInt(EnumState state) {
    if (state == EnumState.notBegin) {
      return AppColors.tag;
      //return AppColors._colorToDo;
    } else if (state == EnumState.inProgress) {
      return AppColors.tag;
      //return AppColors._colorBegin;
    } else if (state == EnumState.cancel) {
      return AppColors.tag;
      //return AppColors._colorAbs;
    } else if (state == "Autre motif") {
      return AppColors.tag;
      //return Colors.deepPurpleAccent;
    } else if (state == "Terminée") {
      return AppColors.tag;
      //return AppColors._colorDone;
    } else if (state == "report") {
      return AppColors.tag;
      //return AppColors._colorReport;
    }else if (state == "Raisons personnelles") {
      return Colors.cyan;
    }

  }

  Color changeColorBackgroundContainerWithProgressRefound(String state) {
    if (state == "À faire") {
      return AppColors.darkPinkMisylColor;
      //return AppColors._colorToDo;
    } else if (state == "begin") {
      return AppColors.tag;
      //return AppColors._colorBegin;
    } else if (state == "Absence Client") {
      return AppColors.tag;
      //return AppColors._colorAbs;
    } else if (state == "Autre motif") {
      return AppColors.tag;
      //return Colors.deepPurpleAccent;
    } else if (state == "Terminée") {
      return AppColors.tag;
      //return AppColors._colorDone;
    } else if (state == "report") {
      return AppColors.tag;
      //return AppColors._colorReport;
    }else if (state == "Raisons personnelles") {
      return AppColors.tag;
      //return Colors.cyan;
    } else {
      return AppColors.tag;
    }
  }





  Color changeBorderColor(String interventionType, String reasonCancellation ) {

    if (interventionType == "Dépannage") {
      return AppColors.tag;
      return AppColors.darkBlueMisylColor;
    } else if (interventionType == "SAV") {
      return AppColors.tag;
      return AppColors.darkPinkMisylColor;

    } else if (interventionType == "Mise en service") {
      return AppColors.tag;
      return AppColors.darkGreyMisylColor;

    } else if (interventionType == "Devis") {
      return AppColors.tag;
      return AppColors.darkGreenMisylColor ;

    } else if (interventionType == "Entretien") {
      return AppColors.tag;
      return AppColors.darkPurpleMisylColor;
      return AppColors.tag;
    } else if (interventionType == "Installation") {
      return AppColors.tag;
      return AppColors.darkCyanMisylColor;
    } else if (interventionType == "Intervention") {
      return AppColors.tag;
      return AppColors.darkOrangeMisylColor;
    } else if (interventionType == "Ramonage") {
      return AppColors.tag;
      return AppColors.darkYellowGreenMisylColor;
    } else if (interventionType == "Tubage") {
      return AppColors.tag;
      return AppColors.darkRedMisylColor;
    } else if (interventionType == "Tubage" ) {
      return AppColors.tag;
      return AppColors.darkRedMisylColor;
    }  else {
      return AppColors.tag;
      return AppColors.greenDarkLogScreen;
    }
  }
  Color changeColorBackgroundContainer(String interventionType) {
    if (interventionType == "Dépannage") {
      return AppColors.tag;
      return AppColors.lightBlueMisylColor;
    } else if (interventionType == "SAV") {
      return AppColors.tag;
      return AppColors.lightPinkMisylColor;
    } else if (interventionType == "Mise en service") {
      return AppColors.tag;
      return AppColors.lightGreyMisylColor;
    } else if (interventionType == "Devis") {
      return AppColors.tag;
      return AppColors.lightGreenMisylColor;
    } else if (interventionType == "Entretien") {
      return AppColors.tag;
      return AppColors.lightPurpleMisylColor;
    } else if (interventionType == "Installation") {
      return AppColors.tag;
      return AppColors.lightCyanMisylColor;
    } else if (interventionType == "Intervention") {
      return AppColors.tag;
      return AppColors.lightOrangeMisylColor;
    } else if (interventionType == "Ramonage") {
      return AppColors.tag;
      return AppColors.lightYellowGreenMisylColor;
    } else if (interventionType == "Tubage") {
      return AppColors.tag;
    } else {
      return AppColors.tag;
    }
  }
}