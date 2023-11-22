import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBooksUseCase extends UseCase<List<BookEntities>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntities>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeatureBooks();
  }
}
