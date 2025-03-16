import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:sweet_fruit_proj/storages/models/archive_food.dart';

part 'archive_food_state.dart';

class ArchiveFoodCubit extends Cubit<ArchiveFoodState> {
  ArchiveFoodCubit({ArchiveFoodState? archiveFood})
      : super(archiveFood ?? const ArchiveFoodState());

  /*void updateName(String value) {
    emit(state.copyWith(name: value));
  }

  void updateOrigin(String value) {
    emit(state.copyWith(origin: value));
  }*/
}

