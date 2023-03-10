import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/my_investment/cic_equity/controller/return_controller.dart';
import 'custom_chip.dart';

Widget customeYearButton() {
  final con = Get.put(ReturnInvestController());
  return Obx(
    () => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: con.infos.asMap().entries.map((val) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 4, bottom: 4),
            child: InkWell(
                onTap: () {
                  con.index.value = val.key;

                  print(con.index);
                },
                child: CustomeChip(
                  isSelection: con.index.value == val.key,
                  title: '${val.value.year}',
                )),
          );
        }).toList(),
      ),
    ),
  );
}
