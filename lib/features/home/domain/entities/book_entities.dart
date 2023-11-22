class BookEntities {
  final int bookId;
  final String imageUrl;
  final String title;
  final String subTitle;
  final num price;
  final num rating;
  final int ratingCount;

  BookEntities({
    required this.bookId,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.ratingCount,
  });
}
