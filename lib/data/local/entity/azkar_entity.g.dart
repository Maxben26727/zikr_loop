// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azkar_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AzkarEntityAdapter extends TypeAdapter<AzkarEntity> {
  @override
  final int typeId = 3;

  @override
  AzkarEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AzkarEntity(
      collectionId: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AzkarEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.collectionId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AzkarEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
