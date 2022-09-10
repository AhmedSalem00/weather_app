import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:we1_app/fiveday/fiveday_screen.dart';

class MyChart extends StatelessWidget {
  const MyChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries<setday, String>>[
            SplineSeries<setday, String>(
              dataSource: controller.FiveDayScreen,
              xValueMapper: (setday f, _) =>
              f.dateTime,
              yValueMapper: (setday f, _) =>
              f.temp,
            ),
          ],
        ),
      ),
    );
  }
}
