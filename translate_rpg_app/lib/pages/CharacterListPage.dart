import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/models/Character.dart';

class CharacterListPage extends StatefulWidget {
  CharacterListPage({Key key, this.characters}) : super(key: key);

  final List<Character> characters;

  @override
  _MyCharacterPageState createState() => _MyCharacterPageState();
}

class _MyCharacterPageState extends State<CharacterListPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      image: AssetImage("images/backgrounds/wallpaper_montain_pixelart.jpg"),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Meus personagens"),
        ),
        body: ListView.builder(
          itemCount: widget.characters.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(widget.characters[index].name),
            );
          },
        ),
      ),
    );
  }
}
