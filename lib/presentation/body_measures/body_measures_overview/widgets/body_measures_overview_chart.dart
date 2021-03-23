import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';

class BodyMeasuresOverviewChart extends StatelessWidget {
  final List<BodyMeasures> bodyMeasuresList;

  const BodyMeasuresOverviewChart({
    Key key,
    @required this.bodyMeasuresList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(
              right: 18.0, left: 2.0, top: 24, bottom: 22),
          child: LineChart(
            mainData(bodyMeasuresList.reversed.toList()),
          ),
        ),
      ),
    );
  }

  List<FlSpot> flSpotList(List<BodyMeasures> list) {
    final List<FlSpot> flSpot = [];
    for (int i = 0; i < list.length; i++) {
      flSpot.add(FlSpot(i.toDouble(), list[i].bodyMeasuresWeight.getOrCrash()));
    }
    return flSpot;
  }

  LineChartData mainData(List<BodyMeasures> list) {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 20,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 15),
          getTitles: (value) {
            return value.toInt().toString();
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value) => const TextStyle(
                  color: Color(0xff67727d),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
            getTitles: (value) {
              return value.toInt().toString();
            },
            reservedSize: 28,
            margin: 12,
            interval: int.parse(200.toString()) > 50 ? 20 : 10),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 2)),
      minX: 0,
      maxX: list.length - 1.toDouble(),
      minY: 0,
      maxY: 150,
      lineBarsData: [
        LineChartBarData(
          spots: flSpotList(list),
          isCurved: true,
          colors: [Colors.greenAccent],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [
              Colors.yellowAccent,
              Colors.greenAccent,
            ].map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}
