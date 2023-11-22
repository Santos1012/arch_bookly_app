class BookEntities {
  final String bookId;
  final String? imageUrl;
  final String title;
  final String? authorName;
  final String? description;
  final num? price;
  final num? rating;
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
