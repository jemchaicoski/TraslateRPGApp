import 'package:flutter/material.dart';
import 'package:translate_rpg_app/models/Character.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';
import 'CharacterListPage.dart';
import 'CharacterRegister.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Character> characterList = [
    Character(name: "João"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CharacterListPage(
        characters: characterList,
      ),
      routes: {
        "/characterResgister": (context) => CharacterRegister(),
        "/myCharacterPage": (context) => MyCharacterPage(),
      },
    );
  }
}
