import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/salary_saving/screen/summary_detail.dart';
import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:cic_project/ui/share/component/pop_Menuitem.dart';
import 'package:cic_project/ui/share/component/salary_saving.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../share/component/showModelbottomsheet.dart';
import '../../../../../cic_equity/model/cic_fixed_income/income/income.dart';
import '../../screen/coupon_schedule.dart';

class SalarySaving extends StatefulWidget {
  const SalarySaving({
    super.key,
    this.modelIncome,
  });

  final ModelIncome? modelIncome;

  @override
  State<SalarySaving> createState() => _SalarySavingState();
}

class _SalarySavingState extends State<SalarySaving>
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

  final con = Get.put(AppTextStyle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F50A4),
      appBar: AppBar(
        backgroundColor: const Color(0xff0F50A4),
        elevation: 0,
        centerTitle: false,
        leading: GestureDetector(
            onTap: () {
              context.go('/myinvest');
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Text('${widget.modelIncome!.accountName}'),
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
                          Text('${widget.modelIncome!.code}',
                              style: con.textStyle(
                                  'DMSans',
                                  const Color(0xffFFFFFF),
                                  14,
                                  FontWeight.w400)),
                          Text(
                            '${widget.modelIncome!.status}',
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
                              'Coupon Earned',
                              style: con.textStyle('DMSans',
                                  const Color(0xffFFFFFF), 14, FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${widget.modelIncome!.mmaAccountId}',
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
                            Text('${widget.modelIncome!.date}',
                                style: con.textStyle(
                                    'DMSans',
                                    const Color(0xffFFFFFF),
                                    14,
                                    FontWeight.w400))
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Saving(
                              text: '${widget.modelIncome!.investmentAmount}',
                              title: 'Investment Amount',
                              color: const Color(0xff4FA30F),
                            ),
                            SvgPicture.asset('asset/svg/divider.svg'),
                            Saving(
                              text: '${widget.modelIncome!.originalAmount}',
                              title: 'Current Principal',
                              color: const Color(0xff0685CF),
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
                                height: 5,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: TabBar(
                                      controller: _tabController,
                                      labelColor: Colors.black,
                                      indicatorColor: Colors.red,
                                      indicator: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      tabs: const [
                                        Tab(
                                          text: 'Detail Summary',
                                        ),
                                        Tab(
                                          text: 'Coupon Schedule',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.pink,
                                  color: const Color(0xffFFFFFF),
                                  width: double.infinity,
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: const [
                                      DetialSummary(),
                                      CouponSchedule()
                                    ],
                                  ),
                                ),
                              ),
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
