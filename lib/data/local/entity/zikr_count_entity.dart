import 'package:hive/hive.dart';

part 'zikr_count_entity.g.dart';

@HiveType(typeId: 4)
class ZikrCountEntity {
  @HiveField(0)
  final String zikrId;

  @HiveField(1)
  final int count;

  ZikrCountEntity({required this.zikrId, required this.count});
}
