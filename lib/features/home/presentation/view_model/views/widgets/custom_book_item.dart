import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * .22,
              ),
              child: const CustomBookImage(),
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
            const SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'You Ca Also Like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const SimilarBooksListView(),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
