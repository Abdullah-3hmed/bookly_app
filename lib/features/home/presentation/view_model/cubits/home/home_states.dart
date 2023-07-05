part of 'home_cubit.dart';

abstract class HomeStates {}

class FeaturedBookInitial extends HomeStates {}

class GetFeaturedBooksLoadingState extends HomeStates {}

class GetFeaturedBooksSuccessState extends HomeStates {}

class GetFeaturedBooksErrorState extends HomeStates {
  final String error;

  GetFeaturedBooksErrorState(this.error);
}

class GetNewestBooksLoadingState extends HomeStates {}

class GetNewestBooksSuccessState extends HomeStates {}

class GetNewestBooksErrorState extends HomeStates {
  final String error;

  GetNewestBooksErrorState(this.error);
}

class GetRelatedBooksLoadingState extends HomeStates {}

class GetRelatedBooksSuccessState extends HomeStates {}

class GetRelatedBooksErrorState extends HomeStates {
  final String error;

  GetRelatedBooksErrorState(this.error);
}
