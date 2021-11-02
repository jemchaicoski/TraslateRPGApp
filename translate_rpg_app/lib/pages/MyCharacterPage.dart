import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text(widget.characterName),
      ),

      body: Center(
        child: Column(
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
      backgroundColor: Colors.amber[200],
      //bottomNavigationBar: NavegationBar(),
    );
  }
}
