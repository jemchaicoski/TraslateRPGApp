import 'package:flutter/material.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyCharacterPage(characterName: 'Nome'),
    );
  }
}
