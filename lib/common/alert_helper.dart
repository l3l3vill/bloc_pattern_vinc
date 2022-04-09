
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipleblocinflutterapp/common/widgets/my_text.dart';


import 'design/app_colors.dart';

class AlertHelper  {

  Future<void> alertError(BuildContext context, String errorMessage) async {
    MyText title = MyText("Erreur", color: Colors.black);
    MyText subTitle = MyText(errorMessage, color: Colors.black);
    return showDialog(context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return (Theme.of(context).platform == TargetPlatform.iOS ) ? CupertinoAlertDialog(title: title, content: subTitle, actions: <Widget>[buttonAlert(context, "Ok"),],): AlertDialog(title: title, content: subTitle, actions: <Widget>[buttonAlert(context, "OK")]);
        }
      );
  }
  Future<bool> alertMessage(BuildContext context, String textTitle , String message) async {
    MyText title = MyText(textTitle, color: Colors.black);
    MyText subTitle = MyText(message, color: Colors.black);
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return (Theme.of(context).platform == TargetPlatform.iOS )
              ? CupertinoAlertDialog(title: title, content: subTitle, actions: <Widget>[buttonAlert(context, "Ok")])
              : AlertDialog(title: title, content: subTitle, actions: <Widget>[ buttonAlert(context, "Ok")]);
        }
    );
  }
  FlatButton buttonAlert(BuildContext context, String text) {
    return FlatButton(
        onPressed: (() => Navigator.pop(context)),
        child: MyText(text, color: Colors.black)
    );
  }
  FlatButton buttonAlertCancel(BuildContext context, String text) {
    return FlatButton(
        onPressed: (() => Navigator.of(context).pop('Success')),
        child: MyText(text, color: Colors.black)
    );
  }

  alertMessageWithReturnValue(BuildContext context, String textTitle , String message, String cancel, String validation)  {
    MyText title = MyText(textTitle, color: Colors.black);
    MyText subTitle = MyText(message, color: Colors.black);
    return showDialog(

        context: context,

        barrierDismissible: false,
        builder: (BuildContext context) {
          return (Theme.of(context).platform == TargetPlatform.iOS )
              ? CupertinoAlertDialog(title: title, content: subTitle, actions: <Widget>[buttonAlertAnswerNo(context, cancel), buttonAlertAnswerYes(context, validation)])
              : AlertDialog(title: title, content: subTitle, actions: <Widget>[buttonAlertAnswerNo(context, cancel), buttonAlertAnswerYes(context, validation)]);
        }
    );
  }

  alertMessageWithReturnValueConfirmation(BuildContext context, String textTitle , String message, String validation)  {
    MyText title = MyText(textTitle, color: Colors.black);
    MyText subTitle = MyText(message, color: Colors.black);
    return showDialog(
        context: context,

        barrierDismissible: false,
        builder: (BuildContext context) {
          return (Theme.of(context).platform == TargetPlatform.iOS )
              ? CupertinoAlertDialog(title: title, content: subTitle, actions: <Widget>[ buttonAlertAnswerYes(context, validation)])
              : AlertDialog(title: title, content: subTitle, actions: <Widget>[ buttonAlertAnswerYes(context, validation)]);
        }
    );
  }
  FlatButton buttonAlertAnswerNo(BuildContext context, String cancel) {
    return FlatButton(
        onPressed: () => Navigator.of(context).pop(false),
        child: Text(cancel)
    );
  }
  FlatButton buttonAlertAnswerYes(BuildContext context, String validation) {
    return FlatButton(
        onPressed: () => Navigator.of(context).pop(true),
        child: Text(validation)
    );
  }



  Future<bool> simpleDialogWithCustomButton(BuildContext context, String title) async {
    return showDialog(
        context: context,
        //barrierDismissible: false,

        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: AppColors.backgroundColorApp,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$title",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            contentPadding: EdgeInsets.all(20.0),
            children: [
              //Image.asset("assets/images/place-holder.png"),
              SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: AppColors.darkPinkMisylColor,
                    height: 40,
                    child: FlatButton(
                      onPressed: () {
                        //check = false;
                        Navigator.pop(context, false);
                      },
                      child: new Text('Annuler',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.blueLogoApp,
                    height: 40,
                    child: FlatButton(
                      onPressed: () {
                        //check = true;
                        Navigator.pop(context, true);
                      },
                      child: new Text('Valider',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
    );
  }


}

/*RaisedButton(
      onPressed: () {
        alertDialogWithAnswer(BuildContext context, String title, String question) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Are you sure?'),
                content: Text('Do you want to remove item?'),
                actions: <Widget>[
                  FlatButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text('NO')),
                  FlatButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text('YES'))
                ],
              )).then((value) {
            if (value != null) {
              if (value == true) {
                Navigator.of(context).popUntil((route) =>  route.isFirst) ;
              } else {
                return;
              }
            }
          });
        }

      },
      child: Text('Show Alert Dialog'),
    ),*/