import 'package:flutter/material.dart';

class CircleToLoad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(
            strokeWidth: 1.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
        ),
      ),
    );
  }
}