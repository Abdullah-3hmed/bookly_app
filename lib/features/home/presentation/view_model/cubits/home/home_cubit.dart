import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;

  static HomeCubit get(context) => BlocProvider.of(context);
  List<BookModel> newestBooks = [];
  List<BookModel> featuredBooks = [];
  List<BookModel> relatedBooks = [];

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

  Future<void> fetchRelatedBooks({
    required String category,
  }) async {
    emit(GetRelatedBooksLoadingState());
    var result = await homeRepo.fetchRelatedBooks(category: category);
    result.fold((failure) {
      emit(
        GetRelatedBooksErrorState(failure.errorMessage),
      );
    }, (books) {
      relatedBooks = books;
      emit(GetRelatedBooksSuccessState());
    });
  }
}
