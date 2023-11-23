import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';
import 'package:hive/hive.dart';


void saveData({required List<BookEntities> books, required String type}) {
    var box = Hive.box(kFeatureBox);
    box.addAll(books);
  }

 