import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/ButtonCharacterSheetWidget.dart';

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonCharacterSheetWidget(
            labelText: "Ficha",
            imagePath: "images/icons/status.png",
            function: showCharacterSheet(),
          ),
          ButtonCharacterSheetWidget(
            labelText: "Habilidades",
            imagePath: "images/icons/book.png",
            function: showCharacterSkills(),
          ),
          ButtonCharacterSheetWidget(
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
