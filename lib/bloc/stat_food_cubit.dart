import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../storages/models/stat_food.dart';

part 'stat_food_state.dart';

class StatFoodCubit extends Cubit<StatFoodState> {
  StatFoodCubit({StatFoodState? statFood})
      : super(statFood ?? const StatFoodState());

  /*void updateType(String value) {
    emit(state.copyWith(type: value));
  }

  void updateName(String value) {
    emit(state.copyWith(name: value));
  }

  void updateOrigin(String value) {
    emit(state.copyWith(origin: value));
  }*/

}

