import 'package:flutter/cupertino.dart';
import 'package:translate_rpg_app/models/Feature.dart';
import 'package:translate_rpg_app/models/Trait.dart';
import 'package:nanoid/nanoid.dart';
import 'classes/Class.dart';
import 'Item.dart';

class Character {
  final String id = nanoid();
  String name;
  Class job;
  String race;
  int level;
  List status = [
    ["Força", 10],
    ["Destreza", 10],
    ["Constituição", 10],
    ["Inteligência", 10],
    ["Sabedoria", 10],
    ["Carisma", 10]
  ];
  int proficiencyBonus;
  int speed;
  int armorClass;
  List<Item> inventory;
  List<String> proficiencies;
  List<Feature> features;
  List<Trait> traits;

  Character({@required this.name});
}
