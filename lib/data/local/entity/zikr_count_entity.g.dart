// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zikr_count_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZikrCountEntityAdapter extends TypeAdapter<ZikrCountEntity> {
  @override
  final int typeId = 4;

  @override
  ZikrCountEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZikrCountEntity(
      zikrId: fields[0] as String,
      count: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ZikrCountEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.zikrId)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ZikrCountEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
