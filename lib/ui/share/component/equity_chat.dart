import 'package:cic_project/ui/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/model/graph/graph_model.dart';

class Investmentchat extends StatelessWidget {
  const Investmentchat({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(HomeController());
    return SfCartesianChart(
        isTransposed: true,
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries>[
          RangeColumnSeries<Synfusion, String>(
            dataSource: con.graphlist.map((element) {
              return Synfusion(
                  date: element.date,
                  year: element.year,
                  month: element.month,
                  price: element.price);
            }).toList(),
            xValueMapper: (Synfusion data, _) => data.date,
            lowValueMapper: (Synfusion data, _) => data.price,
            highValueMapper: (Synfusion data, _) =>
                int.parse(data.year.toString()),
          )
        ]);
  }
}
