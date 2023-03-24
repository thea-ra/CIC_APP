// ignore_for_file: unused_local_variable

import 'package:cic_project/ui/share/component/cic_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/controller/home_controller.dart';
import '../../../../../util/helper/globle_data.dart';
import '../../cic_equity/screen/cic_equity_screen.dart';
import '../../cic_income/screen/cic_fixed_income/screen/cic_income.dart';

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
    _tabController.dispose();
    super.dispose();
  }

  final con = Get.put(HomeController());
  final data = Get.put(GlobleData());

  final list = ['CIC EQUIT FUND', 'CIC FIXED INCOME FUND'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ScaffoldWithNavBar(child: Container()),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 44),
        child: Header(
          title: 'MY Investment',
          svgpic: 'asset/svg/cic_logo.svg',
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            color: const Color(0xff12539F),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: TabBar(
                    labelColor: const Color(0xffFFFFFF),
                    unselectedLabelColor: const Color(0xffFFFFFF),
                    unselectedLabelStyle: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                    indicator: const UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 2.0, color: Color(0xffFFFFFF)),
                        insets: EdgeInsets.symmetric(
                            horizontal: 27.0, vertical: -1)),
                    physics: const AlwaysScrollableScrollPhysics(),
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'CIC EQUITY FUND',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'CIC FIXED INCOME FUND',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      const EquityScreen(),
                      cicFixedIncome(context),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
