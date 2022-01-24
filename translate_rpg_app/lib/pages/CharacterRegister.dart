import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/pages/forms/CharacterMainInformationPage.dart';
import 'package:translate_rpg_app/pages/forms/CharacterStatusPointsForm.dart';
import 'package:translate_rpg_app/components/ImageIconWidget.dart';

class CharacterRegister extends StatefulWidget {
  @override
  _CharacterRegisterStatePage createState() => _CharacterRegisterStatePage();
}

class _CharacterRegisterStatePage extends State<CharacterRegister> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      image: AssetImage("images/backgrounds/wallpaper_montain_pixelart.jpg"),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Registro de Personagem"),
        ),
        body: Column(
          children: [
            ImageIconWidget(),
            CharacterMainInformationPage(),
            // CharacterStatusPointsForm()
          ],
        ),
      ),
    );
  }
}
