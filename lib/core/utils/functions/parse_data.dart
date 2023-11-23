import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import '../../../features/home/domain/entities/book_entities.dart';

List<BookEntities> parseJsonToBookEntitiesMethod(Map<String, dynamic> data) {
  List<BookEntities> books = [];
  for (var items in data["items"]) {
    books.add(BookModel.fromJson(items));
  }
  return books;
}
