import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:cic_project/ui/share/component/custome_text.dart';
import 'package:cic_project/ui/share/component/pop_Menuitem.dart';
import 'package:cic_project/ui/share/component/salary_saving.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../share/component/showModelbottomsheet.dart';
import '../../share/component/togglebutton.dart';

class SalarySaving extends StatefulWidget {
  const SalarySaving({super.key});
  @override
  State<SalarySaving> createState() => _SalarySavingState();
}

class _SalarySavingState extends State<SalarySaving> {
  @override
  Widget build(BuildContext context) {
    final con = Get.put(AppTextStyle());
    return Scaffold(
      backgroundColor: const Color(0xff0F50A4),
      appBar: AppBar(
        backgroundColor: const Color(0xff0F50A4),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              context.go('/');
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('C1: Salary Saving'),
        actions: [
          PopupMenuButton(
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              itemBuilder: (context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                        child: Popupmenuitem(
                      svgpicture: 'asset/svg/circle.svg',
                      text: 'Stop Contract Renewal',
                    )),
                    const PopupMenuDivider(),
                    PopupMenuItem(
                        onTap: () {
                          showBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(14.0),
                                ),
                              ),
                              builder: (context) {
                                return const InterestRecieve();
                              });
                        },
                        child: const Popupmenuitem(
                          svgpicture: 'asset/svg/edits.svg',
                          text: 'Edit Bank Account',
                        )),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                        child: Popupmenuitem(
                      svgpicture: 'asset/svg/coupon.svg',
                      text: 'Edit Coupon Recieve Data',
                    )),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                        child: Popupmenuitem(
                      svgpicture: 'asset/svg/principle.svg',
                      text: 'Principle Redomption',
                    ))
                  ])
        ],
      ),
      body: NestedScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 220,
              stretch: true,
              elevation: 0,
              backgroundColor: const Color(0xff0F50A4),
              onStretchTrigger: () async {
                debugPrint('stretch');
              },
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [StretchMode.zoomBackground],
                background: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 22),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('CiC-11293-0019284',
                              style: con.textStyle(
                                  'DMSans',
                                  const Color(0xffFFFFFF),
                                  14,
                                  FontWeight.w400)),
                          Text(
                            'Bullet payment',
                            style: con.textStyle('DMSans',
                                const Color(0xffFFFFFF), 14, FontWeight.w700),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19, bottom: 28),
                        child: Center(
                            child: Column(
                          children: [
                            Text(
                              'Interest Earned',
                              style: con.textStyle('DMSans',
                                  const Color(0xffFFFFFF), 14, FontWeight.w500),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: Row(
                                children: [
                                  Text('1500.00',
                                      style: con.textStyle(
                                          'DMSans',
                                          const Color(0xffFFFFFF),
                                          26,
                                          FontWeight.w700)),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text('USD',
                                        style: con.textStyle(
                                            'DMSans',
                                            const Color(0xffFFFFFF),
                                            16,
                                            FontWeight.w500)),
                                  ),
                                  Container(
                                    width: 44,
                                    height: 16,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffD0F0CF),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text('+120',
                                          style: con.textStyle(
                                              'DMSans',
                                              const Color(0xff4FA30F),
                                              14,
                                              FontWeight.w400)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text('Tue, 11th May 2022',
                                style: con.textStyle(
                                    'DMSans',
                                    const Color(0xffFFFFFF),
                                    14,
                                    FontWeight.w400))
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Saving(
                              text: '\$10,000.00',
                              title: 'Investment Amount',
                              color: Color(0xff4FA30F),
                            ),
                            SvgPicture.asset('asset/svg/divider.svg'),
                            const Saving(
                              text: '\$10,000.00',
                              title: 'Investment Amount',
                              color: Color(0xff0685CF),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
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
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 9.28),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 3,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffBFBFBF),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              const Togglebutton(
                                lefttext: 'Detail Summary',
                                righttext: 'Interest Schedule',
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFAFAFA),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 22),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Investment Duration',
                                                style: con.textStyle(
                                                    'DMSans',
                                                    const Color(0xff464646),
                                                    14,
                                                    FontWeight.w400)),
                                            Text('12 Months& 0 Day',
                                                style: con.textStyle(
                                                    'DMSans',
                                                    const Color(0xff0A0B09),
                                                    12,
                                                    FontWeight.w700))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 21, left: 10),
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Text('08 Months & Days',
                                            style: con.textStyle(
                                                'DMSans',
                                                const Color(0xff0F50A4),
                                                12,
                                                FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
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
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
