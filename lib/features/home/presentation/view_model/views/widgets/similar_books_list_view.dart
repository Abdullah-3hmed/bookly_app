import 'package:bookly_app/features/home/presentation/view_model/cubits/home/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: HomeCubit.get(context).relatedBooks.isNotEmpty,
          builder: (context) => SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: HomeCubit.get(context).relatedBooks[index].volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10.0,
              ),
              itemCount: HomeCubit.get(context).relatedBooks.length,
            ),
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
