import 'package:hive_flutter/hive_flutter.dart';

part 'azkar_entity.g.dart';

@HiveType(typeId: 3)
class AzkarEntity {
  @HiveField(0)
  final String collectionId;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  AzkarEntity({
    required this.collectionId,
    required this.title,
    required this.description,
  });
}
