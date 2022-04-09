import 'package:flutter/cupertino.dart';
import 'package:orion_delivery/common/alert_helper.dart';



class RegexExtension {


  bool checkRegexUrl(BuildContext context, String value, String nameField, Key key) {
    final regex = RegExp(r'^(https:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$');

    do {
      AlertHelper().alertMessage(context, "L'url est incorrect", "Le champ ${nameField} est incorrect.");
    } while (!regex.hasMatch(value));
  }
  final regex = RegExp("[a-zA-Z]+");

  bool checkRegexString(BuildContext context, String value, String nameField) {
    final regex = RegExp("[a-zA-Z]+");
    /*do {
      AlertHelper().alertMessage(context, "Le ${nameField} est incorrect", "Le champ ${nameField} est incorrect.");
    } while (!regex.hasMatch(value));
*/

   /* if (!regex.hasMatch(value)) {
      return "Votre URL n'est pas au bon format";
    }*/

  }

  checkRegexPhone(BuildContext context, String value, String nameField) {
    final regex = RegExp("^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})");
    do {
      AlertHelper().alertMessage(context, "Le numéro de téléphone est incorrect", "Le champ ${nameField} est incorrect.");
    } while (!regex.hasMatch(value));
  }

  bool checkRegexEmail(BuildContext context, String value) {
    bool check = false;
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regex.hasMatch(value)) {

      check = false;
    } else {
      check = true;
    }
    return check;
  }

  checkRegexCodePostal(BuildContext context, String value, Key key) {
    final regex = RegExp("\d{2}[ ]?\d{3}");
    do {
      AlertHelper().alertMessage(context, "Code postal", "Le code postal est incorrect.");
    } while (!regex.hasMatch(value));
  }

  checkNumber(BuildContext context, String value, String nameField, Key key) {
    final regex = RegExp("[^0-9]");
    do {
      AlertHelper().alertMessage(context, "Numéro de la voie", "Le numéro de la voie est incorrect.");
    } while (!regex.hasMatch(value));
  }
}