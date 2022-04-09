import 'package:url_launcher/url_launcher.dart';

class Phone {

  String cleanPhoneNumberToCall(String phone)  {
    var num = phone.replaceAll(".", "").replaceAll("/", "").replaceAll(" ", "");
    final phoneNumber = "tel://${num}";
    return phoneNumber;
  }

  String cleanPhoneNumberToDisplay(String phone)  {
    var num = phone.replaceAll(".", " ").replaceAll("/", " ");
    final phoneNumber = "${num}";
    return phoneNumber;
  }


  Future<void> makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}