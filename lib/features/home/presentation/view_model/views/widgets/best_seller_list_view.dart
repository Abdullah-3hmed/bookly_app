import 'package:bookly_app/features/home/presentation/view_model/cubits/home/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/book_list_view_item.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return ConditionalBuilder(
          condition: HomeCubit.get(context).newestBooks.isNotEmpty,
          builder: (context) => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => BookListViewItem(
              bookModel: HomeCubit.get(context).newestBooks[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20.0,
            ),
            itemCount: HomeCubit.get(context).newestBooks.length,
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
