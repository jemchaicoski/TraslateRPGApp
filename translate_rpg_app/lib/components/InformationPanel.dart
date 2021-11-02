import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/TextCharacterSheet.dart';

class InformationPanel extends StatefulWidget {
  const InformationPanel(
      {@required this.name,
      @required this.race,
      @required this.job,
      @required this.age})
      : super();

  final name;
  final race;
  final job;
  final age;

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
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          TextCharacterSheet(title: "Nome", text: widget.name),
          TextCharacterSheet(title: "Raça", text: widget.race),
          TextCharacterSheet(title: "Classe", text: widget.job),
          TextCharacterSheet(title: "Idade", text: widget.age),
        ],
      ),
    );
  }
}
