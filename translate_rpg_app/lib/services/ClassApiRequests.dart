import 'package:flutter/cupertino.dart';
import 'package:translate_rpg_app/models/classes/Class.dart';
import 'package:translate_rpg_app/services/Dnd5Service.dart';

class ClassApiRequests {
  static String getClassDie(String className) {
    Dnd5Service dnd5service = new Dnd5Service();
    Future requisition = dnd5service.getClassJson(className);
    requisition.then((data) {
      Class classWithValuesFromApi = Class.fromJson(data);
      debugPrint(classWithValuesFromApi.hitDie.toString());
      return classWithValuesFromApi.hitDie.toString();
    }, onError: (e) {
      print(e);
    });
    return "";
  }
}
