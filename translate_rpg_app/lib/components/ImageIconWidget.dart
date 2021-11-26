import 'package:flutter/material.dart';

class ImageIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage("images/icons/guardian.png"),
        ),
      ],
    );
  }
}
