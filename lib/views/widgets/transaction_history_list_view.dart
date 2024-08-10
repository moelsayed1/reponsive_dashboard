import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionHistory: items[index]);
      },
    );
  }
}
