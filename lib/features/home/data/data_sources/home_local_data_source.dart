import '../../domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookEntities> fetchFeatureBooks();
  List<BookEntities> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntities> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntities> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
