part of 'foods_cubit.dart';

class FoodsState extends Equatable {
  const FoodsState({
    this.archiveFoods = const [],
    this.statFoods = const [],
  });

  final List<ArchiveFoodState> archiveFoods;
  final List<StatFoodState> statFoods;

  @override
  // TODO: implement props
  List<Object?> get props => [archiveFoods, statFoods];

  FoodsState copyWith({
  List<ArchiveFoodState>? archiveFoods,
  List<StatFoodState>? statFoods
  }) {
    return FoodsState(
      archiveFoods: archiveFoods ?? this.archiveFoods,
      statFoods: statFoods ?? this.statFoods
    );
  }
}
