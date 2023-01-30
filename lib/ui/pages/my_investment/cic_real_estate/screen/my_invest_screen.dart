import 'package:cic_project/ui/share/component/cic_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/controller/home_controller.dart';
import '../../../../../util/helper/globle_data.dart';
import '../../cic_equity/cic_equity_screen.dart';
import '../../cic_income/screen/cic_fixed_income/cic_income.dart';

class MyInvest extends StatefulWidget {
  const MyInvest({super.key});

  @override
  State<MyInvest> createState() => _MyInvestState();
}

class _MyInvestState extends State<MyInvest> {
  final con = Get.put(HomeController());
  final data = Get.put(GlobleData());
  @override
  Widget build(BuildContext context) {
    final list = ['CIC EQUIT FUND', 'CIC FIXED INCOME FUND', 'CIC REAL ESTATE'];
    return Scaffold(
      // bottomNavigationBar: ScaffoldWithNavBar(child: Container()),
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 44),
          child: Header(
            title: 'MY Investment',
            svgpic: 'asset/svg/cic_logo.svg',
          )),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 88,
            color: const Color(0xff12539F),
          ),
          Obx((() => (con.loading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: data.list.map((e) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    data.selected.value = e;
                                    debugPrint(data.selected.value);
                                  });
                                },
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'DMSans'),
                                ),
                              ),
                            );
                          }).toList(),
                        )),
                    Expanded(
                        child: data.selected.value == 'CIC FIXED INCOME FUND'
                            ? const CICFixedIncome()
                            : data.selected.value == 'CIC EQUIT FUND'
                                ? const EquityScreen()
                                : const CICFixedIncome())
                  ],
                ))))
        ],
      ),
    );
  }
}
