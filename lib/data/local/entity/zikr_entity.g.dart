// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zikr_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ZikrEntityAdapter extends TypeAdapter<ZikrEntity> {
  @override
  final int typeId = 1;

  @override
  ZikrEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ZikrEntity(
      id: fields[0] as String?,
      azkar: fields[1] as String,
      translation: fields[2] as String,
      duration: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ZikrEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.azkar)
      ..writeByte(2)
      ..write(obj.translation)
      ..writeByte(3)
      ..write(obj.duration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ZikrEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ActiveZikrEntityAdapter extends TypeAdapter<ActiveZikrEntity> {
  @override
  final int typeId = 2;

  @override
  ActiveZikrEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ActiveZikrEntity(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ActiveZikrEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActiveZikrEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
