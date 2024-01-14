// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Complited.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComplitedAdapter extends TypeAdapter<Complited> {
  @override
  final int typeId = 1;

  @override
  Complited read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Complited(
      heading: fields[0] as String,
      description: fields[1] as String,
      date: fields[3] as String,
      file: fields[2] as String,
      subject: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Complited obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.heading)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.file)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.subject);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComplitedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
