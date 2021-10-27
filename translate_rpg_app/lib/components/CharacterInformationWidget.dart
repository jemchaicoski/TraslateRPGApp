import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/ButtonsCharacterSheetWidget.dart';

class CharacterInformationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisSize: MainAxisSize,
        children: [
          ButtonsCharacterSheetWidget(
            labelText: "Ficha",
            imagePath: "images/icons/status.png",
            function: showCharacterSheet(),
          ),
          ButtonsCharacterSheetWidget(
            labelText: "Habilidades",
            imagePath: "images/icons/book.png",
            function: showCharacterSkills(),
          ),
          ButtonsCharacterSheetWidget(
            labelText: "Inventário",
            imagePath: "images/icons/backpack.png",
            function: showCharacterInventory(),
          ),
        ],
      ),
    );
  }

  Function showCharacterSheet() {}
  Function showCharacterSkills() {}
  Function showCharacterInventory() {}
}
