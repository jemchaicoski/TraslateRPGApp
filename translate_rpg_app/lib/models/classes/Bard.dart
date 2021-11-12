import 'package:translate_rpg_app/models/Spell.dart';
import 'package:translate_rpg_app/models/classes/Class.dart';
import 'package:translate_rpg_app/models/classes/SpellCaster.dart';

class Bard extends Class implements SpellCaster {
  @override
  String spellCastingAbility;

  @override
  List<Spell> spellList;
}
