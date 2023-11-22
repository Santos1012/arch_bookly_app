import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase({required this.homeRepo});
  Future<Either<Failure, List<BookEntities>>> call() {
    return homeRepo.fetchFeatureBooks();
  }
}
