import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:cic_project/ui/share/component/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../../../share/component/button.dart';

class DetialSummary extends StatelessWidget {
  const DetialSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(AppTextStyle());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Investment Duration',
                          style: con.textStyle('DMSans',
                              const Color(0xff464646), 14, FontWeight.w400)),
                      Text('12 Months& 0 Day',
                          style: con.textStyle('DMSans',
                              const Color(0xff0A0B09), 12, FontWeight.w700))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21, left: 10),
                  child: LinearPercentIndicator(
                    width: 284,
                    barRadius: const Radius.circular(5),
                    lineHeight: 8.0,
                    percent: 0.8,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('08 Months & Days',
                      style: con.textStyle('DMSans', const Color(0xff0F50A4),
                          12, FontWeight.w700)),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: const [
                CustomeText(
                  leading: 'Investment Date',
                  trialing: '23 Feb2021',
                ),
                CustomeText(
                  leading: 'First payment Date',
                  trialing: '02 jan 2022',
                ),
                CustomeText(
                  leading: 'Maturity Date',
                  trialing: '15 Jun 2023',
                ),
                CustomeText(
                  leading: 'Maturity industry',
                  trialing: 'Close at Maturity',
                ),
                CustomeText(
                  leading: 'Interest Rate',
                  trialing: '14.4% annually',
                )
              ],
            ),
          ),
        ),
        SafeArea(
            top: false,
            minimum: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomeButton(
                    text: 'About FIF',
                    color: Color(0xff0F50A4),
                  ),
                ),
                CustomeButton(
                  text: 'Invest more',
                  color: Color(0xffFFFFFF),
                  background: Color(0xff0F50A4),
                ),
              ],
            )),
      ],
    );
  }
}
