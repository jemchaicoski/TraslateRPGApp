import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/components/ButtonsRow.dart';
import 'package:translate_rpg_app/components/ImageIconWidget.dart';
import 'package:translate_rpg_app/components/InformationPanel.dart';

class MyCharacterPage extends StatefulWidget {
  MyCharacterPage({Key key, this.characterName}) : super(key: key);

  final String characterName;

  @override
  _MyCharacterPageState createState() => _MyCharacterPageState();
}

class _MyCharacterPageState extends State<MyCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      image: AssetImage("images/backgrounds/wallpaper_montain_pixelart.jpg"),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          title: Text(widget.characterName),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIconWidget(name: widget.characterName),
            ButtonsRow(),
            InformationPanel(
              name: "Nome",
              age: "Idade",
              job: "Classe",
              race: "Raça",
            ),
          ],
        ),
      ),
    );
  }
}
