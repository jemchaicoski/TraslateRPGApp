import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/CharacterInformationWidget.dart';
import 'package:translate_rpg_app/components/ImageIconWidget.dart';
import 'package:translate_rpg_app/components/InformationPanel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text('Compêndio Errante'),
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIconWidget(),
            CharacterInformationWidget(),
            InformationPanel(),
          ],
        ),
      ),
      backgroundColor: Colors.amber[200],
      //bottomNavigationBar: NavegationBar(),
    );
  }
}
