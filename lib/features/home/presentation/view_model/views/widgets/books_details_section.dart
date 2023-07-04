import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .22,
          ),
          child: const CustomBookImage(
            imageUrl:
                'https://img.freepik.com/free-photo/freshly-italian-pizza-with-mozzarella-cheese-slice-generative-ai_188544-12347.jpg?size=626&ext=jpg&ga=GA1.1.1589751077.1688284145',
          ),
        ),
        const SizedBox(
          height: 43.0,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'The Jungle Book',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 36,
        ),
        const BooksAction(),
      ],
    );
  }
}
