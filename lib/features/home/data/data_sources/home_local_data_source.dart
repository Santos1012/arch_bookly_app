import 'package:bookly_app/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookEntities> fetchFeatureBooks();
  List<BookEntities> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntities> fetchFeatureBooks() {
    var box = Hive.box<BookEntities>(kFeatureBox);
    return box.values.toList();
  }

  @override
  List<BookEntities> fetchNewestBooks() {
    var box = Hive.box<BookEntities>(kNewestBox);
    return box.values.toList();
  }
}
