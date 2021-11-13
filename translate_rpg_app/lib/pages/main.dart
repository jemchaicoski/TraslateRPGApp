import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:translate_rpg_app/models/Character.dart';
import 'package:translate_rpg_app/models/classes/Class.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';
import 'package:translate_rpg_app/pages/CharacterListPage.dart';
import 'package:translate_rpg_app/services/dnd5Service.dart';

void main() {
  runApp(MyApp());
  printExampleClassJson("barbarian");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: MyCharacterPage(characterName: 'Nome'),
        home: CharacterListPage(
          characters: [Character(name: "João")],
        ));
  }
}

void printExampleClassJson(String className) async {
  Dnd5Service service = new Dnd5Service();
  var result = await service.fetchClass(className);
  print(result);
}
