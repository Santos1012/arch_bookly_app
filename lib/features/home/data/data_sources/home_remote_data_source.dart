import 'package:bookly_app/features/home/domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntities>> fetchFeatureBooks();
  Future<List<BookEntities>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntities>> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() {
    throw UnimplementedError();
  }
  
}