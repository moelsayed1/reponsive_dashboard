import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: StylesApp.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xffF1F1F1),
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: StylesApp.styleMedium16,
              ),
              SizedBox(
                width: 18,
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
