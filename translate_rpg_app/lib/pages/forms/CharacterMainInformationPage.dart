import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/BackgroundImageWidget.dart';
import 'package:translate_rpg_app/components/DropdownWidget.dart';
import 'package:translate_rpg_app/models/Character.dart';
import 'package:translate_rpg_app/pages/CharacterRegister.dart';
import 'package:translate_rpg_app/pages/MyCharacterPage.dart';

class CharacterMainInformationPage extends StatefulWidget {
  CharacterMainInformationPage({Key key}) : super(key: key);

  @override
  _CharacterMainInformationPageState createState() =>
      _CharacterMainInformationPageState();
}

class _CharacterMainInformationPageState
    extends State<CharacterMainInformationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: new InputDecoration(hintText: 'Nome'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Escolha um nome';
              }
              return null;
            },
          ),
          DropdownWidget(dropdownValue: "Bárbaro", list: <String>[
            'Bárbaro',
            'Bardo',
            'Bruxo',
            'Clérigo',
            'Druida',
            'Feiticeiro',
            'Guerreiro',
            'Ladino',
            'Mago',
            'Monge',
            'Paladino',
            'Patrulheiro'
          ]),
          DropdownWidget(dropdownValue: "Anão", list: <String>[
            'Anão',
            'Elfo',
            'Halfling',
            'Humano',
            'Draconato',
            'Gnomo',
            'Meio-Elfo',
            'Meio-Orc',
            'Tiefling',
          ]),
          DropdownWidget(dropdownValue: "Level", list: <String>[
            'Level',
            '1',
            '2',
            '3',
            '4',
            '5',
            '6',
            '7',
            '8',
            '9',
            '10',
            '11',
            '12',
            '13',
            '14',
            '15',
            '16',
            '17',
            '18',
            '19',
            '20',
          ]),
        ],
      ),
    );
  }
}
