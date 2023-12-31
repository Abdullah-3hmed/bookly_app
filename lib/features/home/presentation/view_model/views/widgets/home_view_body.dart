import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view_model/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Newest Books',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 20.0,
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
