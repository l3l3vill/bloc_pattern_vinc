import 'package:flutter/cupertino.dart';

class MyObject {

  bool checkMail(TextEditingController mail, bool check, BuildContext context ) {
    if (mail.text != null && mail.text == "" ) {
      check = true;
      return check;
    } else {
      check = false;
      return check;
    }
  }
  /*bool checkMailValidation(String mail, bool check) {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(mail);
    if (emailValid == true) {
      check = true;

      return check;
    } else {
      check = false;

      return check;
    }
  }*/
  bool checkPassword(TextEditingController password, bool check ) {
    if (password.text != null && password.text == "") {
      check = true;
      return check;
    } else {
      check = false;
      return check;
    }
  }
  bool checkName(TextEditingController name, bool check ) {
    if (name.text != null && name.text == "") {
      check = true;
      return check;
    } else {
      check = false;
      return check;
    }
  }

  hideKeyboard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}