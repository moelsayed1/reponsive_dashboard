import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: StylesApp.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}


