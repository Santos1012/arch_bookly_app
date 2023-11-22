

import 'package:bookly_app/features/home/domain/entities/book_entities.dart';

abstract class HomeRepo {
  Future<List<BookEntities>> fetchFeatureBooks();
  Future<List<BookEntities>> fetchNewestBooks();
}
