import 'package:hive/hive.dart';
part 'book_entities.g.dart';

@HiveType(typeId: 0)
class BookEntities {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? imageUrl;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? authorName;
  @HiveField(4)
  final String? description;
  @HiveField(5)
  final num? price;
  @HiveField(6)
  final num? rating;
  @HiveField(7)
  final int? ratingCount;

  BookEntities({
    required this.bookId,
    required this.imageUrl,
    required this.title,
    required this.authorName,
    required this.description,
    required this.price,
    required this.rating,
    required this.ratingCount,
  });
}
/*
!   to create book_entities.g.dart class run:

!   flutter packages pub run build_runner build
 */