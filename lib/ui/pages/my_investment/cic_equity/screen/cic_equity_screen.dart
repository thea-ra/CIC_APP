import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../share/component/button.dart';
import '../../../../share/component/cic_graph.dart';
import '../../../../share/component/currentUT.dart';
import '../../../../share/component/custome_button_year.dart';
import '../../../../share/component/icon_text.dart';
import '../../../../share/component/total_ut.dart';
import '../../../../share/component/twoline.dart';
import '../../../home/controller/home_controller.dart';
import '../controller/return_controller.dart';

class EquityScreen extends StatefulWidget {
  const EquityScreen({super.key});

  @override
  State<EquityScreen> createState() => _EquityScreenState();
}

class _EquityScreenState extends State<EquityScreen> {
  @override
  Widget build(BuildContext context) {
    final con = Get.put(HomeController());
    final getcon = Get.put(ReturnInvestController());
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(14)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 14, top: 20),
                              child: IconText(
                                svgpic: 'asset/svg/Information.svg',
                                text: 'UT Information',
                              ),
                            ),
                            Obx((() => Padding(
                                  padding:
                                      const EdgeInsets.only(left: 14, top: 22),
                                  child: CurrentUT(
                                    title: 'Current UT',
                                    subtitle: con.investData.value.price,
                                    text: 'As of 31 December 2021',
                                  ),
                                ))),
                            Obx(
                              () => Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 14, right: 16.52),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TotalUT(
                                      title: 'Total UT',
                                      subtile: con.investData.value.price,
                                      svgpic: 'asset/svg/Group.svg',
                                      color: const Color(0xff0F50A4),
                                    ),
                                    TotalUT(
                                      title: 'Total Net Worth',
                                      subtile: con.investData.value.price,
                                      svgpic: 'asset/svg/networth.svg',
                                      color: const Color(0xff0F50A4),
                                      colors: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 14, top: 38),
                              child: Titlesub(
                                title: 'UI Price Evolution',
                                subtile: 'Figure in USD',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: InvestmentGraph(),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 110),
                        child: Center(
                            child: SvgPicture.asset('asset/svg/line.svg')),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ListTile(
                            leading:
                                SvgPicture.asset('asset/svg/Information.svg'),
                            title: const Text(
                              'Return On Investment',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'DMSans',
                                  color: Color(0xff12121F)),
                            ),
                            trailing: SvgPicture.asset('asset/svg/clocks.svg'),
                          ),
                        ),
                        customeYearButton(),
                        Obx(
                          () => Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Total Gain',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Text(
                                      getcon.infos[getcon.index.value].info!
                                              .total ??
                                          "",
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0,
                                          right: 60,
                                          top: 20,
                                          bottom: 40),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Capital Gain',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black45),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3),
                                                child: Text(
                                                    getcon
                                                            .infos[getcon
                                                                .index.value]
                                                            .info!
                                                            .capitalgain ??
                                                        "",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black)),
                                              ),
                                              Stack(
                                                children: [
                                                  Row(
                                                    children: const [],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Dividend Gain',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black45),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 3),
                                                child: Text(
                                                    getcon
                                                            .infos[getcon
                                                                .index.value]
                                                            .info!
                                                            .dividend ??
                                                        "",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.black)),
                                              ),
                                              Stack(
                                                children: [
                                                  Row(
                                                    children: const [],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                        child: SvgPicture.asset(
                                            'asset/svg/line.svg'))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomeButton(
                  text: 'About FIF',
                  color: Color(0xff0F50A4),
                ),
              ),
              InkWell(
                onTap: () {
                  context.go('/myinvest/utscreen');
                },
                child: const CustomeButton(
                  text: 'Subscribe Now',
                  color: Color(0xffFFFFFF),
                  background: Color(0xff0F50A4),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
