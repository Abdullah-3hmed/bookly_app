import 'package:bookly_app/features/home/presentation/view_model/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const BookListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20.0,
        ),
        itemCount: 10,
      ),
    );
  }
}
