import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view_model/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view_model/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20.0,
          ),
          SearchResultListView(),
        ],
      ),
    );
  }
}
