import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: activeIndex == 0 ? StylesApp.styleMedium16 : StylesApp.styleMedium16.copyWith(color: Colors.white),
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.4 : null,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: activeIndex == 1 ? StylesApp.styleMedium16 : StylesApp.styleMedium16.copyWith(color: Colors.white),
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: activeIndex == 2 ? StylesApp.styleMedium16 : StylesApp.styleMedium16.copyWith(color: Colors.white),
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: StylesApp.styleMedium16,
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}