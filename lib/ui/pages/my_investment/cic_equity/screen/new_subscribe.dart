import 'package:cic_project/ui/pages/my_investment/cic_equity/controller/ut_subscribe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

import '../../../../share/component/cusotm_myinvestment.dart/custome_inputfield.dart';
import '../../../../share/component/get_funding/cutome_detail_ut.dart';
import '../../../../share/component/get_funding/cutome_ut_summary.dart';
import '../../../home/controller/home_controller.dart';

class NewSubscribe extends StatefulWidget {
  const NewSubscribe({super.key});

  @override
  State<NewSubscribe> createState() => _NewSubscribeState();
}

class _NewSubscribeState extends State<NewSubscribe> {
  final getcon = Get.put(HomeController());
  final con = Get.put(UTController());
  double totalvalue = 0;
  @override
  void initState() {
    totalvalue = con.total * 1.47;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
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
                        children: [
                          CustomeTextFormField(
                            label: '${getcon.investData.value.price}',
                            isclick: false,
                            type: TextInputType.number,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CustomeTextFormField(
                              label: 'UT Subscription',
                              isclick: true,
                              type: TextInputType.number,
                            ),
                          ),
                          Obx(
                            () => Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: con.utval.value.isEmpty
                                  ? Row(
                                      children: [
                                        SvgPicture.asset('asset/svg/wrong.svg'),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                              'Please Enter UT to Subscribe',
                                              style: TextStyle(
                                                  fontFamily: 'DMSans',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffED1E26))),
                                        )
                                      ],
                                    )
                                  : Container(),
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
                          children: [
                            const CusotmeUTSummary(
                              title: 'UT Summary',
                              svgpic: 'asset/svg/right.svg',
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Initial UT Amount',
                                trialing: '0 UI',
                              ),
                            ),
                            Obx(
                              () => Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: CustomeDetailSummary(
                                  svgpic: 'asset/svg/right.svg',
                                  title: 'New UT Amount',
                                  trialing: '${con.utval.value} UI',
                                ),
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
                          children: [
                            const CusotmeUTSummary(
                              title: 'Payment Summary',
                              svgpic: 'asset/svg/right.svg',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Total Subscription Cost',
                                trialing: '$totalvalue',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: CustomeDetailSummary(
                                svgpic: 'asset/svg/right.svg',
                                title: 'Last date of payment',
                                trialing: '',
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: InkWell(
                      onTap: () {
                        con.isclick.value = !con.isclick.value;
                      },
                      child: Row(
                        children: [
                          Obx(
                            () => Icon(con.isclick.value
                                ? Icons.radio_button_checked
                                : Icons.radio_button_unchecked),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: const [
                                Text('I have read and agree to ',
                                    style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                                Text('CIC Serivce Agreement ',
                                    style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff12539F))),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Center(
            child: Obx(
              () => SliderButton(
                
                  backgroundColor:
                      con.isclick.value && con.utval.value.isNotEmpty
                          ? const Color(0xff0F50A4).withOpacity(0.8)
                          : const Color(0xffB3C6E0),
                  width: double.infinity,
                  height: 65,
                  dismissThresholds: 0.8,
                  shimmer: true,
                  buttonSize: 55,
                  buttonColor: con.isclick.value && con.utval.value.isNotEmpty
                      ? const Color(0xff0F50A4)
                      : const Color(0xff0F50A4).withOpacity(0.4),
                  alignLabel: Alignment.center,
                  action: () {
                    con.submitSubscribtion(context);
                  },
                  label: const Text(
                    "Slide to Sumbit",
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffFFFFFF),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
