import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



//class DisplayPhotosOrIcon extends StatelessWidget {



/*
  Widget displayPhotos(String _path, BuildContext context,  AsyncSnapshot<InterventionModel> snapshot, int index) {

    if (snapshot.data.photosMap["photo${index}"] != "") {
      print(snapshot.data.photosMap["photo${index}"]);
      print("image file OK");

      print("-------------------------------------------------------");
      return Image.file(File(snapshot.data.photosMap["photo${index}"]),
              width: AppSize().widthScreen(context) /3,
              height: AppSize().widthScreen(context) /3,
              fit:BoxFit.fill
          );
      return Image.asset(
        snapshot.data.photosMap["photo${index}"],
        fit: BoxFit.cover,
      );
    } else {
      return Icon(Icons.camera_alt, size: AppSize().widthScreen(context)  /10);
    }
  }

  @override
  Widget build(BuildContext context, AsyncSnapshot<InterventionModel> snapshot) {
    if (snapshot.data.photosMap["photo${index}"] != "") {
      print(snapshot.data.photosMap["photo${index}"]);
      print("image file OK");

      print("-------------------------------------------------------");
      return Image.file(File(snapshot.data.photosMap["photo${index}"]),
              width: AppSize().widthScreen(context) /3,
              height: AppSize().widthScreen(context) /3,
              fit:BoxFit.fill
          );
      return Image.asset(
        snapshot.data.photosMap["photo${index}"],
        fit: BoxFit.cover,
      );
    } else {
      return Icon(Icons.camera_alt, size: AppSize().widthScreen(context)  /10);
    }
  }
//}*/




class IconWidget extends StatelessWidget {

  final String url;
  final double size;

  IconWidget({@required this.url, @required this.size});

  @override
  Widget build(BuildContext context) {
    return (url == null)
        ? Container(height: size, width: size)
        : Image.network(url, height: size, width: size); // au cas ou il n'y aurait pas d'url
  }

}