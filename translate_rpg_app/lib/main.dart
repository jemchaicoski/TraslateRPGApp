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
          children: [
            ImageIconWidget(),
            CharacterInformationWidget(),
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
    return CircleAvatar(
      radius: 100.0,
      backgroundImage: AssetImage("images/icons/knight.png"),
      backgroundColor: Colors.yellow[300],
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
          ),
          ButtonsCharacterSheetWidget(
            labelText: "Habilidades",
            imagePath: "images/icons/book.png",
          ),
          ButtonsCharacterSheetWidget(
            labelText: "Inventário",
            imagePath: "images/icons/backpack.png",
          ),
        ],
      ),
    );
  }
}

class ButtonsCharacterSheetWidget extends StatelessWidget {
  final String labelText;
  final String imagePath;

  ButtonsCharacterSheetWidget(
      {@required this.labelText, @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
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
