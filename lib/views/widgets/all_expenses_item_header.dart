import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.allExpensesItemModel,
      this.imageBackgroundColor,
      this.imageColor});

  final AllExpensesItemModel allExpensesItemModel;

  final Color? imageBackgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(
            allExpensesItemModel.image,
            colorFilter: ColorFilter.mode(
              imageColor ?? Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor == null ? Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
