import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
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
            style: StylesApp.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
          ),
        ],
      ),
    );
  }
}