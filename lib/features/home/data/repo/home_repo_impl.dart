import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entities.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntities>>> fetchFeatureBooks() async {
    try {
      var localBooksList = homeLocalDataSource.fetchFeatureBooks();
      if (localBooksList.isNotEmpty) {
        return right(localBooksList);
      }
      var remoteBooksList = await homeRemoteDataSource.fetchFeatureBooks();
      return right(remoteBooksList);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntities>>> fetchNewestBooks() async {
    try {
      var localBooksList = homeLocalDataSource.fetchNewestBooks();
      if (localBooksList.isNotEmpty) {
        return right(localBooksList);
      }
      var remoteBooksList = await homeRemoteDataSource.fetchNewestBooks();
      return right(remoteBooksList);
    } catch (e) {
      return left(Failure());
    }
  }
}
