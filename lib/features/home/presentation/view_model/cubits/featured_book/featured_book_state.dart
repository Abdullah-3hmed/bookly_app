part of 'featured_book_cubit.dart';

abstract class FeaturedBookStates {}

class FeaturedBookInitial extends FeaturedBookStates {}

class GetFeaturedBooksLoadingState extends FeaturedBookStates {}

class GetFeaturedBooksSuccessState extends FeaturedBookStates {}

class GetFeaturedBooksErrorState extends FeaturedBookStates {
  final String error;

  GetFeaturedBooksErrorState(this.error);
}

class GetNewestBooksLoadingState extends FeaturedBookStates {}

class GetNewestBooksSuccessState extends FeaturedBookStates {}

class GetNewestBooksErrorState extends FeaturedBookStates {
  final String error;

  GetNewestBooksErrorState(this.error);
}
