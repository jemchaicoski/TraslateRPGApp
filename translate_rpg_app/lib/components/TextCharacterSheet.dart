import 'package:flutter/material.dart';

class TextCharacterSheet extends StatefulWidget {
  final String title;
  final String text;

  TextCharacterSheet({@required this.title, @required this.text});

  @override
  _TextCharacterSheetState createState() => _TextCharacterSheetState();
}

class _TextCharacterSheetState extends State<TextCharacterSheet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '${widget.title}',
                  style: TextStyle(height: 2, fontSize: 20),
                ),
                Text(
                  widget.text,
                  style: TextStyle(height: 1, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
