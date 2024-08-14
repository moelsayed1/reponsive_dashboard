import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width < 1750 ? const Expanded(child: DetailedIncomeChart()) : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(
          width: 40,
        ),
        Expanded(
            flex: 2,
            child: IncomeDetails()),
      ],
    );
  }
}