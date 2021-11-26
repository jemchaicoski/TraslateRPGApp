import 'package:flutter/material.dart';
import 'package:translate_rpg_app/pages/CharacterRegisterMainInformationPage.dart';

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
      home: CharacterRegisterMainInformationPage(),
      //    MyCharacterPage(characterName: Dnd5Service.getClassDie("barbarian")),
      // home: CharacterListPage(
      //   characters: [],
      // ),
    );
  }
}
