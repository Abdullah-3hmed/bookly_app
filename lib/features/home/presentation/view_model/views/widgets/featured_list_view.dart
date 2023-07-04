import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/cubits/featured_book/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        if (state is GetFeaturedBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: HomeCubit.get(context).featuredBooks[index].volumeInfo?.imageLinks?.thumbnail ??
                    'https://img.freepik.com/free-photo/freshly-italian-pizza-with-mozzarella-cheese-slice-generative-ai_188544-12347.jpg?size=626&ext=jpg&ga=GA1.1.1589751077.1688284145',
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10.0,
              ),
              itemCount: HomeCubit.get(context).featuredBooks.length,
            ),
          );
        } else if (state is GetFeaturedBooksErrorState) {
          return CustomErrorWidget(errorMessage: state.error);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
