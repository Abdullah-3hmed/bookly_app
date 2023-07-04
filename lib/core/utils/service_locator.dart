import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl());
  getIt.get<HomeRepoImpl>();
}
