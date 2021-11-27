import 'package:flutter/material.dart';
import 'package:translate_rpg_app/pages/CharacterRegisterMainInformationPage.dart';
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
      //home: CharacterRegisterMainInformationPage(),
      home: MyCharacterPage(
        characterName: "Nome",
        //home: CharacterListPage(
        //   characters: [],
        // ),
      ),
    );
  }
}
