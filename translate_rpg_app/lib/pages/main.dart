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
      home: MyCharacterPage(characterName: getClassDie("barbarian")),
      // home: CharacterListPage(
      //   characters: [],
      // ),
    );
  }

  String getClassDie(String className) {
    Dnd5Service dnd5service = new Dnd5Service();
    Future requisition = dnd5service.getClassJson(className);
    requisition.then((data) {
      Class classWithValuesFromApi = Class.fromJson(data);
      debugPrint(classWithValuesFromApi.hitDie.toString());
      return classWithValuesFromApi.hitDie.toString();
    }, onError: (e) {
      print(e);
    });
  }
}
