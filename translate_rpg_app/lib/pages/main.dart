import 'package:flutter/material.dart';
import 'package:translate_rpg_app/models/Character.dart';
import 'package:translate_rpg_app/models/classes/Class.dart';
import 'package:translate_rpg_app/pages/CharacterListPage.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';
import 'package:translate_rpg_app/services/Dnd5Service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          MyCharacterPage(characterName: Dnd5Service.getClassDie("barbarian")),
      // home: CharacterListPage(
      //   characters: [],
      // ),
    );
  }
}
