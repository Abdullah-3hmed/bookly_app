import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/view_model/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ],
  );
}
