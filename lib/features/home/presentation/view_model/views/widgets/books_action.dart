import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99' r' $',
              textColor: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              fontSize: 16.0,
              textColor: Colors.white,
              backGroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}