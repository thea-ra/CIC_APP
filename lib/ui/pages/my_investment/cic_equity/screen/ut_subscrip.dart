import 'package:flutter/material.dart';

import '../../../get_funding/screen/debt_investment.dart';
import 'new_subscribe.dart';

class UTSubscribe extends StatefulWidget {
  const UTSubscribe({super.key});

  @override
  State<UTSubscribe> createState() => _UTSubscribeState();
}

class _UTSubscribeState extends State<UTSubscribe>
    with TickerProviderStateMixin {
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

  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          'UT Subscribe',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
              fontFamily: 'DMSans'),
        ),
        backgroundColor: const Color(0xff12539F),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0.2,
                  blurRadius: 2,
                  offset: const Offset(0, 0.2), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TabBar(
                indicator: const UnderlineTabIndicator(
                    borderSide:
                        BorderSide(width: 4.0, color: Color(0xff0F50A4)),
                    insets:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: -12)),
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                tabs: const [
                  Text(
                    'New Subscription',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F50A4)),
                  ),
                  Text(
                    'Subscription History',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F50A4)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: const [NewSubscribe(), DebtInvestment()]),
          )
        ],
      ),
    );
  }
}
