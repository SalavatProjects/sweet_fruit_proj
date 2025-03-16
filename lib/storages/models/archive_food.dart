import 'package:isar/isar.dart';

part 'archive_food.g.dart';

@collection
class ArchiveFood {
  Id id = Isar.autoIncrement;

  String? name;
  String? origin;
}