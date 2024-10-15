import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'zikr_entity.g.dart';

@HiveType(typeId: 1) // Ensure this typeId is unique for this entity
class ZikrEntity {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String azkar;

  @HiveField(2)
  final String translation;

  @HiveField(3)
  final int duration;

  ZikrEntity({
    String? id,
    required this.azkar,
    required this.translation,
    required this.duration,
    int? count,
  }) : id = id ?? Uuid().v4();
}

@HiveType(typeId: 2)
class ActiveZikrEntity {
  @HiveField(0)
  final String id;

  ActiveZikrEntity({required this.id});
}
