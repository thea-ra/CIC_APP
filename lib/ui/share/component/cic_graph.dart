import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../pages/home/controller/home_controller.dart';
import '../../../core/model/graph/graph_model.dart';


class InvestmentGraph extends StatelessWidget {
  const InvestmentGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(HomeController());
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries<Synfusion, String>>[
          LineSeries<Synfusion, String>(
              dataSource: con.graphlist.map((element) {
                return Synfusion(
                    date: element.date,
                    year: element.year,
                    month: element.month,
                    price: element.price);
              }).toList(),
              xValueMapper: (Synfusion data, _) => data.date,
              yValueMapper: (Synfusion data, _) => data.price,
              // Enable data label
              dataLabelSettings: const DataLabelSettings(isVisible: true))
        ]);
  }
}
