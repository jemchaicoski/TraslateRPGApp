import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  String dropdownValue;
  final List<String> list;

  DropdownWidget({Key key, @required this.dropdownValue, @required this.list})
      : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black54),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          widget.dropdownValue = newValue;
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
