import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: StylesApp.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
