import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    List<BookModel> books = [];
    try {
      var value = await DioHelper.getData(
        endPoint: 'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming',
      );
      for (var item in value.data?['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    List<BookModel> books = [];
    try {
      var value = await DioHelper.getData(
        endPoint: 'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming',
      );
      for (var item in value.data?['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }
}
