import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sweet_fruit_proj/bloc/archive_food_cubit.dart';
import 'package:sweet_fruit_proj/bloc/stat_food_cubit.dart';
import 'package:sweet_fruit_proj/storages/isar.dart';
import 'package:equatable/equatable.dart';
import 'package:sweet_fruit_proj/storages/models/stat_food.dart';

part 'foods_state.dart';

class FoodsCubit extends Cubit<FoodsState> {
  FoodsCubit() : super(const FoodsState());

  Future<void> getArchiveFoods() async {
    final archiveFoods = await AppIsarDatabase.getArchiveFoods();
    emit(state.copyWith(
      archiveFoods: archiveFoods.map((e) => ArchiveFoodState.fromIsarModel(e)).toList(),
    ));
  }

  Future<void> getStatFoods() async {
    final statFoods = await AppIsarDatabase.getStatFoods();
    emit(state.copyWith(
      statFoods: statFoods.map((e) => StatFoodState.fromIsarModel(e)).toList(),
    ));
  }

  Future<void> addArchiveFood(ArchiveFoodState archiveFood) async {
    await AppIsarDatabase.addArchiveFood(archiveFood.toIsarModel());
    await getArchiveFoods();
  }

  void addStatFood(StatFoodState statFood) {
    AppIsarDatabase.addStatFood(statFood.toIsarModel());
    getStatFoods();
  }

  Future<void> deleteArchiveFood(int id) async {
    await AppIsarDatabase.deleteArchiveFood(id);
    await getArchiveFoods();
  }
}
