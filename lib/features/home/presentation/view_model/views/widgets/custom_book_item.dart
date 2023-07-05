import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/presentation/view_model/cubits/home/home_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    HomeCubit.get(context).fetchRelatedBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                BookDetailsSection(
                  bookModel: widget.bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                SimilarBooksSection(
                  bookModel: widget.bookModel,
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
