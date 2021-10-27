import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/TextCharacterSheet.dart';

class InformationPanel extends StatefulWidget {
  const InformationPanel() : super();

  @override
  _InformationPanelState createState() => _InformationPanelState();
}

class _InformationPanelState extends State<InformationPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        color: Colors.amber[100],
      ),
      child: Column(
        children: [
          TextCharacterSheet(text: "Nome"),
          TextCharacterSheet(text: "Raça"),
          TextCharacterSheet(text: "Classe"),
          TextCharacterSheet(text: "Idade"),
        ],
      ),
    );
  }
}
