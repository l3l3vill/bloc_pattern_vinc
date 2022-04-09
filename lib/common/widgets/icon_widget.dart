import 'package:flutter/cupertino.dart';

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