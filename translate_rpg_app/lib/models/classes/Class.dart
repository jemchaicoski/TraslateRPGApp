import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class Class {
  String className;
  int hitDie;
  List proficiencies;
  List proficienciesChoices;
  List savingthrows;
  List startingEquipament;
  List startingEquipamentOptions;

  Class({
    @required this.className,
    @required this.hitDie,
    @required this.proficiencies,
    @required this.proficienciesChoices,
    @required this.savingthrows,
    @required this.startingEquipament,
    @required this.startingEquipamentOptions,
  });

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
        className: json["name"] as String,
        hitDie: json["hit_die"] as int,
        proficiencies: json["proficiencies"] as List,
        proficienciesChoices: json["proficiency_choices"] as List,
        savingthrows: json["saving_throws"] as List,
        startingEquipament: json["starting_equipment"] as List,
        startingEquipamentOptions: json["starting_equipment_options"] as List);
  }
}
