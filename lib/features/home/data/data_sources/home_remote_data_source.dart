import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/functions/save_data.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';

import '../../../../core/utils/functions/parse_data.dart';

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
    saveData(books: books, type: kFeatureBox);
    return books;
  }

  @override
  Future<List<BookEntities>> fetchNewestBooks() async {
    Map<String, dynamic> data = await apiService.get(
      endPoints:
          "volumes?maxResults=40&Filtering=free-ebooks&Sorting=relevance: flutter&q=subject:flutter platform&orderBy=newest",
    );
    List<BookEntities> books = parseJsonToBookEntitiesMethod(data);
    saveData(books: books, type: kNewestBox);
    return books;
  }
}
