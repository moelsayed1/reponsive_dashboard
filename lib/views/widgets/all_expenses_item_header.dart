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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundColor ?? const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
