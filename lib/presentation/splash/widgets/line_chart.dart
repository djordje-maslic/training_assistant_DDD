import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/presentation/splash/misc/repetitions_max.dart';
import 'package:reminder_app/presentation/splash/widgets/splash_card.dart';

class LineChartSample2 extends StatelessWidget {


  final SetsList list;

  const LineChartSample2({@required this.list,Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0xff232d37)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                mainData(list),
              ),
            ),
          ),
        ),
      ],
    );
  }
List<FlSpot> flSpotList(SetsList list){
   final List<FlSpot> flSpot=[];
    for(int i=0; i< list.length; i++){
      flSpot.add(FlSpot(i.toDouble(), setsListToIntLis(list)[i].toDouble()));
    }
        return flSpot;
}

  LineChartData mainData(SetsList list) {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
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
          reservedSize: double.parse(repetitionsMax(list)),
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            return (value.toInt() + 1).toString();
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
            interval: int.parse(repetitionsMax(list)) > 50 ? 20 : 10),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 2)),
      minX: 0,
      maxX: list.length-1.toDouble(),
      minY: 0,
      maxY: double.parse(repetitionsMax(list)),
      lineBarsData: [
        LineChartBarData(
          spots: flSpotList(list),
          isCurved: true,
          colors: [
            const Color(0xff23b6e6),
            const Color(0xff02d39a),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: [
              const Color(0xff23b6e6),
              const Color(0xff02d39a),
            ].map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),

      ],
    );
  }
}
