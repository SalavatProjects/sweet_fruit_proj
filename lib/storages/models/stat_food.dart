import 'package:isar/isar.dart';

part 'stat_food.g.dart';

@collection
class StatFood {
  Id id = Isar.autoIncrement;

  String? type;
  String? name;
  String? origin;
}