import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:translate_rpg_app/models/classes/Class.dart';

class Dnd5Service {
  final String baseUrl = "https://www.dnd5eapi.co/api/";

  Future<Map> _fetchClass(String className) async {
    final Uri requestUrl = Uri.parse(this.baseUrl + "classes/" + className);
    Response response = await http.get(requestUrl);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ("Erro de requisição");
    }
  }

  Future getClassJson(String className) async {
    var result = await _fetchClass(className);
    return result;
  }

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
