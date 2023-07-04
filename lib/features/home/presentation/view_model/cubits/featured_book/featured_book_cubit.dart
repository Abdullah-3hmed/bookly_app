import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookStates> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
  late HomeRepo homeRepo;

  static FeaturedBookCubit get(context) => BlocProvider.of(context);
  List<BookModel> newestBooks = [];
  List<BookModel> featuredBooks = [];

  Future<void> fetchFeaturedBooks() async {
    emit(GetFeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        GetFeaturedBooksErrorState(failure.errorMessage),
      );
    }, (books) {
      featuredBooks = books;
      emit(GetFeaturedBooksSuccessState());
    });
  }

  Future<void> fetchNewestBooks() async {
    emit(GetNewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(
        GetNewestBooksErrorState(failure.errorMessage),
      );
    }, (books) {
      newestBooks = books;
      emit(GetNewestBooksSuccessState());
    });
  }
}
