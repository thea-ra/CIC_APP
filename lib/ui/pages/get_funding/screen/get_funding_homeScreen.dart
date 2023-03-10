import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../share/component/get_funding/custom_header.dart';
import 'debt_investment.dart';
import 'equity_investment.dart';

class GetFundingHomeScreen extends StatefulWidget {
  const GetFundingHomeScreen({super.key});

  @override
  State<GetFundingHomeScreen> createState() => _GetFundingHomeScreenState();
}

class _GetFundingHomeScreenState extends State<GetFundingHomeScreen>
    with TickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                context.go('/');
              },
              child: const Icon(Icons.arrow_back_ios)),
          backgroundColor: const Color(0xff0F50A4),
          title: const CustomHeader(),
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
                      insets: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: -12)),
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _tabController,
                  tabs: const [
                    Text(
                      'Equity Investment',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0F50A4)),
                    ),
                    Text(
                      'Debt Investment',
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
                  children: const [EquityInvestment(), DebtInvestment()]),
            )
          ],
        ),
      ),
    );
  }
}
