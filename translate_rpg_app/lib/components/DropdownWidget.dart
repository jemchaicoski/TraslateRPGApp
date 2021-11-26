import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class DropdownWidget extends StatefulWidget {
  DropdownWidget({Key key, @required this.defaultValue, @required this.list})
      : super(key: key);

  String defaultValue;
  final List<String> list;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

/// This is the private State class that goes with DropdownWidget.
class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    String value = widget.defaultValue;
    return DropdownButton<String>(
      value: value,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          value = newValue;
        });
      },
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
