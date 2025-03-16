import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'models/archive_food.dart';
import 'models/stat_food.dart';

abstract class AppIsarDatabase {
  static late final Isar _instance;

  static Future<Isar> init() async {
    final dir = await getApplicationDocumentsDirectory();
    return _instance = await Isar.open(
        [ArchiveFoodSchema, StatFoodSchema],
        directory: dir.path);
  }

  static Future<List<ArchiveFood>> getArchiveFoods() async {
    return await _instance.writeTxn(
        () async => await _instance.archiveFoods.where().findAll(),
    );
  }

  static List<StatFood> getStatFoods() {
    return _instance.writeTxnSync(
        () => _instance.statFoods.where().findAllSync(),
    );
  }

  static Future<void> addArchiveFood(ArchiveFood archiveFood) async {
    await _instance.writeTxn(() async => await _instance.archiveFoods.put(archiveFood));
  }

  static Future<void> deleteArchiveFood(int id) async {
    await _instance.writeTxn(() async => await _instance.archiveFoods.delete(id));
  }

  static void addStatFood(StatFood statFood) {
    _instance.writeTxnSync(() => _instance.statFoods.putSync(statFood));
  }
}