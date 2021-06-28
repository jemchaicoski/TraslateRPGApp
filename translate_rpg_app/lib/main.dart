import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

class ImageIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage("images/icons/knight.png"),
          backgroundColor: Colors.yellow[300],
        ),
        Text(
          "Character name",
          textScaleFactor: 1.8,
        )
      ],
    );
  }
}

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

class ButtonsCharacterSheetWidget extends StatelessWidget {
  final String labelText;
  final String imagePath;
  final Function function;

  ButtonsCharacterSheetWidget(
      {@required this.labelText,
      @required this.imagePath,
      @required this.function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {function},
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(imagePath),
            width: 50.0,
          ),
          Text(labelText),
        ],
      ),
    );
  }
}

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

class TextCharacterSheet extends StatefulWidget {
  final String text;

  const TextCharacterSheet({@required this.text});

  @override
  _TextCharacterSheetState createState() => _TextCharacterSheetState();
}

class _TextCharacterSheetState extends State<TextCharacterSheet> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '${widget.text}',
                  style: TextStyle(height: 2, fontSize: 20),
                ),
                Text(
                  "Exemplo",
                  style: TextStyle(height: 1, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
