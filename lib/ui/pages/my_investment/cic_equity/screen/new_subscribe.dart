import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

import '../../../../share/component/cusotm_myinvestment.dart/custome_inputfield.dart';
import '../../../../share/component/get_funding/cutome_detail_ut.dart';
import '../../../../share/component/get_funding/cutome_ut_summary.dart';
import '../controller/income_controller.dart';

class NewSubscribe extends StatefulWidget {
  const NewSubscribe({super.key});

  @override
  State<NewSubscribe> createState() => _NewSubscribeState();
}

class _NewSubscribeState extends State<NewSubscribe> {
  final con = Get.put(IncomeController());

  @override
  void dispose() {
    con.controller.value.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final con = Get.put(IncomeController());
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // UT price
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: const [
                          CustomeTextFormField(
                            label: '\$1.48',
                            isclick: false,
                            type: TextInputType.number,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CustomeTextFormField(
                              label: 'UT Subscribe',
                              isclick: true,
                              type: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: const Offset(
                                0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            CusotmeUTSummary(
                              title: 'UT Summary',
                              svgpic: 'asset/svg/right.svg',
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Initial UT Amount',
                                trialing: '0 UI',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Initial UT Amount',
                                trialing: '0 UI',
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: const Offset(
                                0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Column(
                          children: const [
                            CusotmeUTSummary(
                              title: 'UT Summary',
                              svgpic: 'asset/svg/right.svg',
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Initial UT Amount',
                                trialing: '0 UI',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Initial UT Amount',
                                trialing: '0 UI',
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: SliderButton(
                backgroundColor: const Color(0xffB3C6E0),
                width: double.infinity,
                shimmer: true,
                alignLabel: Alignment.center,
                action: () {
                  ///Do something here
                  Navigator.of(context).pop();
                },
                label: const Text(
                  "Slide to cancel Event",
                  style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: const Icon(Icons.arrow_forward)),
          ),
        )
      ],
    );
  }
}
