import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xFFF1F1F1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: itemModel,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: StylesApp.styleSemiBold16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: StylesApp.styleRegular14,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: StylesApp.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xFFF1F1F1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: itemModel,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: StylesApp.styleSemiBold16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: StylesApp.styleRegular14,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: StylesApp.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}