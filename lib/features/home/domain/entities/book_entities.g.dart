// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitiesAdapter extends TypeAdapter<BookEntities> {
  @override
  final int typeId = 0;

  @override
  BookEntities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntities(
      bookId: fields[0] as String,
      imageUrl: fields[1] as String?,
      title: fields[2] as String,
      authorName: fields[3] as String?,
      description: fields[4] as String?,
      price: fields[5] as num?,
      rating: fields[6] as num?,
      ratingCount: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntities obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.authorName)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.ratingCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
