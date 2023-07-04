import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          imageUrl:
              'https://img.freepik.com/free-photo/freshly-italian-pizza-with-mozzarella-cheese-slice-generative-ai_188544-12347.jpg?size=626&ext=jpg&ga=GA1.1.1589751077.1688284145',
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10.0,
        ),
        itemCount: 10,
      ),
    );
  }
}
