import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: StylesApp.styleSemiBold20,
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(),
      ],
    );
  }
}
