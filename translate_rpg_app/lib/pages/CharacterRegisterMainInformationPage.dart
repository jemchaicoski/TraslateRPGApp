import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/components/CharacterMainInformationForm.dart';
import 'package:translate_rpg_app/components/ImageIconWidget.dart';

class CharacterRegisterMainInformationPage extends StatefulWidget {
  @override
  _CharacterRegisterMainInformationStatePage createState() =>
      _CharacterRegisterMainInformationStatePage();
}

class _CharacterRegisterMainInformationStatePage
    extends State<CharacterRegisterMainInformationPage> {
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
            MainInformationForm(),
          ],
        ),
      ),
    );
  }
}
