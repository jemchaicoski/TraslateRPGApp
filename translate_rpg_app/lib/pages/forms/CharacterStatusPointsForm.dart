import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/DropdownWidget.dart';

class CharacterStatusPointsForm extends StatefulWidget {
  const CharacterStatusPointsForm({Key key}) : super(key: key);

  @override
  CharacterStatusPointsFormState createState() {
    return CharacterStatusPointsFormState();
  }
}

class CharacterStatusPointsFormState extends State<CharacterStatusPointsForm> {
  final _formKey = GlobalKey<FormState>();
  final list = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
  ];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30.0),
            child: Text(
              "Atributos",
              style: TextStyle(height: 5, fontSize: 18),
            ),
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("Força")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("Destreza")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("Constituição")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("inteligência")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("Sabedoria")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 80.0,
                  margin: const EdgeInsets.only(left: 30.0),
                  child: Text("Carisma")),
              SizedBox(width: 50),
              DropdownWidget(dropdownValue: "1", list: list),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                margin: const EdgeInsets.only(right: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Próximo'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
