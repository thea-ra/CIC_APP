import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../share/component/cic_graph.dart';
import '../../../share/component/currentUT.dart';
import '../../../share/component/icon_text.dart';
import '../../../share/component/total_ut.dart';
import '../../../share/component/twoline.dart';
import '../../home/controller/home_controller.dart';

class EquityScreen extends StatefulWidget {
  const EquityScreen({super.key});

  @override
  State<EquityScreen> createState() => _EquityScreenState();
}

class _EquityScreenState extends State<EquityScreen> {
  @override
  Widget build(BuildContext context) {
    final con = Get.put(HomeController());
    return SingleChildScrollView(
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
                            padding: const EdgeInsets.only(left: 14, top: 22),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  child: Center(child: SvgPicture.asset('asset/svg/line.svg')),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const IconText(
                  svgpic: 'asset/svg/history.svg',
                  text: 'UT History',
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      con.isClick.value = !con.isClick.value;
                    });
                  },
                  child: const Text(
                    'Views',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff0685CF),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
