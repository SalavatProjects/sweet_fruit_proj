part of 'archive_food_cubit.dart';

class ArchiveFoodState extends Equatable {
  const ArchiveFoodState({
    this.id,
    this.name = '',
    this.origin = '',
  });

  final int? id;
  final String name;
  final String origin;

  factory ArchiveFoodState.fromIsarModel(ArchiveFood archiveFood) {
    return ArchiveFoodState(
      id: archiveFood.id,
      name: archiveFood.name ?? '',
      origin: archiveFood.origin ?? ''
    );
  }

  @override
  List<Object> get props => [name, origin];

  ArchiveFoodState copyWith({
    int? id,
    String? name,
    String? origin,
  }) {
    return ArchiveFoodState(
      id: id ?? this.id,
      name: name ?? this.name,
      origin: origin ?? this.origin,
    );
  }

  ArchiveFood toIsarModel() {
    return ArchiveFood()
        ..name = name
        ..origin = origin;
  }
}

