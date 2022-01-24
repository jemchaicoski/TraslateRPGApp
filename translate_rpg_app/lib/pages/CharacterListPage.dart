import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/models/Character.dart';
import 'package:translate_rpg_app/pages/CharacterRegister.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';

class CharacterListPage extends StatefulWidget {
  CharacterListPage({Key key, this.characters}) : super(key: key);
  List<Character> characters;

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCharacterPage(
                        characterName: widget.characters[index].name),
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CharacterRegister()),
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
