import 'package:flutter/cupertino.dart';

class Class {
  String className;
  int hitDie;
  List proficiencies;
  List proficienciesChoices;
  List savingThrows;
  List startingEquipament;
  List startingEquipamentOptions;

  Class({
    @required this.className,
    @required this.hitDie,
    @required this.proficiencies,
    @required this.proficienciesChoices,
    @required this.savingThrows,
    @required this.startingEquipament,
    @required this.startingEquipamentOptions,
  });

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
        className: json["name"] as String,
        hitDie: json["hit_die"] as int,
        proficiencies: json["proficiencies"] as List,
        proficienciesChoices: json["proficiency_choices"] as List,
        savingThrows: json["saving_throws"] as List,
        startingEquipament: json["starting_equipment"] as List,
        startingEquipamentOptions: json["starting_equipment_options"] as List);
  }

  @override
  String toString() {
    return """'
    Class(
      className: $className, 
      hitDie: $hitDie, 
      proficiencies: $proficiencies, 
      proficienciesChoices: $proficienciesChoices, 
      savingthrows: $savingThrows, 
      startingEquipament: $startingEquipament, 
      startingEquipamentOptions: $startingEquipamentOptions
    )
    '""";
  }
}
