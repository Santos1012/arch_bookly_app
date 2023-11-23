import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntities>> fetchFeatureBooks();
  Future<List<BookEntities>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntities>> fetchFeatureBooks() async {
    Map<String, dynamic> data = await apiService.get(
      endPoints:
          "volumes?maxResults=40&Filtering=free-ebooks&Sorting=relevance: flutter&q=subject:programming&orderBy=newest",
    );
    List<BookEntities> books = parseJsonToBookEntitiesMethod(data);
    return books;
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() async {
    Map<String, dynamic> data = await apiService.get(
      endPoints:
          "volumes?maxResults=40&Filtering=free-ebooks&Sorting=relevance: flutter&q=subject:flutter platform&orderBy=newest",
    );
    List<BookEntities> books = parseJsonToBookEntitiesMethod(data);
    return books;
  }

  List<BookEntities> parseJsonToBookEntitiesMethod(Map<String, dynamic> data) {
    List<BookEntities> books = [];
    for (var items in data["items"]) {
      books.add(BookModel.fromJson(items));
    }
    return books;
  }
}
