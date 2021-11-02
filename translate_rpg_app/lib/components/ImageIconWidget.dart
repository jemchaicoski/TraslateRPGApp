import 'package:flutter/material.dart';

class ImageIconWidget extends StatelessWidget {
  final name;

  ImageIconWidget({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage("images/icons/knight.png"),
          backgroundColor: Colors.yellow[300],
        ),
        Text(
          this.name,
          textScaleFactor: 1.8,
        )
      ],
    );
  }
}
