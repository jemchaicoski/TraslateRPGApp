import 'package:flutter/material.dart';
import 'package:translate_rpg_app/components/DropdownWidget.dart';

class MainInformationForm extends StatefulWidget {
  const MainInformationForm({Key key}) : super(key: key);

  @override
  MainInformationFormState createState() {
    return MainInformationFormState();
  }
}

class MainInformationFormState extends State<MainInformationForm> {
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
                return 'Please enter some text';
              }
              return null;
            },
          ),
          DropdownWidget(defaultValue: "Bárbaro", list: <String>[
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
