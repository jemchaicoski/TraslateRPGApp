import 'package:flutter/material.dart';

class ButtonCharacterSheetWidget extends StatelessWidget {
  final String labelText;
  final String imagePath;
  final Function function;

  ButtonCharacterSheetWidget(
      {@required this.labelText,
      @required this.imagePath,
      @required this.function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {function},
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(imagePath),
            width: 50.0,
          ),
          Text(labelText),
        ],
      ),
    );
  }
}
