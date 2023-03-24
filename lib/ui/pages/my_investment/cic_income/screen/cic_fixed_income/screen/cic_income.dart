import 'package:cic_project/ui/pages/my_investment/cic_equity/controller/income_controller.dart';
import 'package:cic_project/ui/share/component/saving_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../../../share/component/button.dart';

Widget cicFixedIncome(BuildContext context) {
  final incomecontroller = Get.put(IncomeController());

  return NestedScrollView(
    physics: const AlwaysScrollableScrollPhysics(),
    headerSliverBuilder: (_, __) {
      return [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 128,
          // stretch: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [StretchMode.zoomBackground],
            background: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffB3C8E1),
                      Color(0xffE4E9F0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffB4C8E1),
                ),
                child: Row(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    child: Stack(
                      children: [
                        incomecontroller.maps.isNotEmpty
                            ? PieChart(
                                dataMap: incomecontroller.maps,
                                animationDuration:
                                    const Duration(milliseconds: 800),
                                chartRadius: 100,
                                colorList: incomecontroller.approvedlist
                                    .map((element) {
                                  return Color(int.parse(
                                      '0xff${element.color!.substring(1)}'));
                                }).toList(),
                                chartType: ChartType.ring,
                                ringStrokeWidth: 12,
                                legendOptions: const LegendOptions(
                                  showLegends: false,
                                ),
                                chartValuesOptions: const ChartValuesOptions(
                                  showChartValues: false,
                                ),
                              )
                            : Container(),
                        AspectRatio(
                          aspectRatio: 2 / 2,
                          child: Center(
                              child:
                                  SvgPicture.asset('asset/svg/totaltran.svg')),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, bottom: 10, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total Investment in USD',
                          style: TextStyle(
                              fontFamily: 'DMSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            height: 1,
                            width: 176,
                            color: Colors.grey,
                          ),
                        ),
                        Obx(
                          () => Text(
                              '${incomecontroller.totolinvestments.value.totalinvestment}',
                              style: const TextStyle(
                                  fontFamily: 'DMSans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        )
      ];
    },
    body: Obx(
      () => incomecontroller.isloadingFetchIncome.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 9.28),
                              alignment: Alignment.center,
                              child: Container(
                                height: 5.13,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: const Color(0xffBFBFBF),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9.18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: incomecontroller.approvedlist
                                        .map((element) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.go('/myinvest/salaryscreen',
                                                extra: element);
                                          },
                                          child: SavingCard(
                                            title: element.accountName,
                                            subtitle: element.code,
                                            amount: element.investmentAmount,
                                            status: element.status,
                                            modelIncome: element,
                                            color: Color(int.parse(
                                                '0xff${element.color.toString().substring(1)}')),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, top: 14, bottom: 10),
                                    child: Text(
                                      'Confirmed Application',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans'),
                                    ),
                                  ),
                                  Column(
                                    children: incomecontroller.dataconfirmed
                                        .map((element) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.go(
                                                '/myinvest/salaryscreen/detail',
                                                extra: element);
                                          },
                                          child: SavingCard(
                                            title: element.accountName,
                                            subtitle: element.code,
                                            amount: element.investmentAmount,
                                            status: element.status,
                                            color: Color(int.parse(
                                                '0xff${element.color.toString().substring(1)}')),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, top: 14, bottom: 10),
                                    child: Text(
                                      'Pending Application',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'DMSans'),
                                    ),
                                  ),
                                  Column(
                                    children:
                                        incomecontroller.mydata.map((element) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.go(
                                                '/myinvest/salaryscreen/pending',
                                                extra: element);
                                          },
                                          child: SavingCard(
                                            title: element.accountName,
                                            subtitle: element.code,
                                            status: element.status,
                                            amount: element.investmentAmount,
                                            color: Color(int.parse(
                                                '0xff${element.color.toString().substring(1)}')),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                ],
                              ),
                            ),
                            incomecontroller.hidelist.isNotEmpty
                                ? GestureDetector(
                                    onTap: () {
                                      context.go('/myinvest/pincode',
                                          extra: incomecontroller.hidelist);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Hidden Contracts',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'DMSans'),
                                          ),
                                          Image.asset(
                                              'asset/image/arrowdown.png')
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(),
                            incomecontroller.hide.value
                                ? Column(
                                    children:
                                        incomecontroller.hidelist.map((e) {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: SavingCard(
                                          title: e.accountName,
                                          subtitle: e.code,
                                          status: e.status,
                                          amount: e.investmentAmount,
                                          color: Color(int.parse(
                                              '0xff${e.color.toString().substring(1)}')),
                                        ),
                                      );
                                    }).toList(),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  top: false,
                  minimum: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            context.go('/myinvest/aboutfif');
                          },
                          child: const CustomeButton(
                            text: 'About FIF',
                            color: Color(0xff0F50A4),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/myinvest/fixedincome');
                        },
                        child: const CustomeButton(
                          text: 'Invest more',
                          color: Color(0xffFFFFFF),
                          background: Color(0xff0F50A4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    ),
  );
}
