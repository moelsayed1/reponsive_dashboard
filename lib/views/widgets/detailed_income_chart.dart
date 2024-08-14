import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 30 : 25,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 1 ? 30 : 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: activeIndex == 2 ? 30 : 25,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex == 3 ? 30 : 25,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}