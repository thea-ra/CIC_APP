// ignore_for_file: unused_local_variable

import 'package:cic_project/ui/share/component/cic_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/controller/home_controller.dart';
import '../../../../../util/helper/globle_data.dart';
import '../../cic_equity/screen/cic_equity_screen.dart';
import '../../cic_income/screen/cic_fixed_income/cic_income.dart';

class MyInvest extends StatefulWidget {
  const MyInvest({super.key});

  @override
  State<MyInvest> createState() => _MyInvestState();
}

class _MyInvestState extends State<MyInvest> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
          Obx(
            (() => (con.loading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Column(
                      children: [
                        TabBar(
                          physics: const BouncingScrollPhysics(),
                          isScrollable: true,
                          labelStyle: const TextStyle(
                              fontSize: 13,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 13,
                            fontFamily: "DMSans",
                            fontWeight: FontWeight.w500,
                          ),
                          controller: _tabController,
                          // give the indicator a decoration (color and border radius)
                          indicatorColor: Colors.transparent,
                          labelColor: const Color(0xffFFFFFF),
                          unselectedLabelColor: const Color(0xffFFFFFF),
                          tabs: const [
                            // first tab [you can add an icon using the icon property]
                            Tab(
                              text: 'CIC EQUIT FUND',
                            ),

                            // second tab [you can add an icon using the icon property]
                            Tab(
                              text: 'CIC FIXED INCOME FUND',
                            ),
                            Tab(
                              text: 'CIC REAL ESTATE',
                            ),
                          ],
                        ),
                        // Expanded(
                        //     child:
                        //         data.selected.value == 'CIC FIXED INCOME FUND'
                        //             ? const CICFixedIncome()
                        //             : data.selected.value == 'CIC EQUIT FUND'
                        //                 ? const EquityScreen()
                        //                 : const CICFixedIncome())

                        Expanded(
                          child: TabBarView(
                              controller: _tabController,
                              children: const [
                                EquityScreen(),
                                CICFixedIncome(),
                                EquityScreen()
                              ]),
                        )
                      ],
                    ),
                  ))),
          )
        ],
      ),
    );
  }
}
