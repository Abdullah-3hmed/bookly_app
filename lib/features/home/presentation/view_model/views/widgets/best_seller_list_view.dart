import 'package:bookly_app/features/home/presentation/view_model/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const BookListViewItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20.0,
      ),
      itemCount: 10,
    );
  }
}
