part of 'stat_food_cubit.dart';

class StatFoodState extends Equatable {
  const StatFoodState({
    this.id,
    this.type = '',
    this.name = '',
    this.origin = '',
  });

  final int? id;
  final String type;
  final String name;
  final String origin;

  factory StatFoodState.fromIsarModel(StatFood statFood) {
    return StatFoodState(
      id: statFood.id,
      type: statFood.type ?? '',
      name: statFood.name ?? '',
      origin: statFood.origin ?? '',
    );
  }

  @override
  List<Object?> get props => [id, type, name, origin];

  StatFoodState copyWith({
    int? id,
    String? type,
    String? name,
    String? origin,
  }) {
    return StatFoodState(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      origin: origin ?? this.origin,
    );
  }

  StatFood toIsarModel() {
    return StatFood()
      ..type = type
      ..name = name
      ..origin = origin;
  }
}

