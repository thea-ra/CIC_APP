import 'package:cic_project/ui/pages/my_investment/cic_equity/controller/income_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../share/component/button.dart';
import '../../../../../share/component/saving_card.dart';

class CICFixedIncome extends StatelessWidget {
  const CICFixedIncome({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(IncomeController());
    return NestedScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 148,
            stretch: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            onStretchTrigger: () async {
              debugPrint('stretch');
            },
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.zoomBackground],
              background: Padding(
                padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffB4C8E1),
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 22, left: 20, right: 18, bottom: 21),
                      child: SvgPicture.asset('asset/svg/piechat.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 35, bottom: 18),
                          child: Text(
                            'Total investment in USD',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0A0B09),
                                fontFamily: 'DMSans'),
                          ),
                        ),
                        Text(
                          '\$${con.sum.toString()}',
                          style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0A0B09)),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          )
        ];
      },
      body: Column(
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
                          children: [
                            InkWell(
                                onTap: () {
                                  context.go('/salaryscreen');
                                },
                                child: Column(
                                  children: con.mydata.map((element) {
                                    String color =
                                        '0xff${element.color.toString().substring(1)}';
                                    var fullcolor = int.parse(color);
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: SavingCard(
                                        title: element.accountName,
                                        subtitle: element.code,
                                        amount: element.investmentAmount,
                                        color: Color(fullcolor),
                                      ),
                                    );
                                  }).toList(),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
              top: false,
              minimum: const EdgeInsets.only(left: 20.0, right: 20.0),
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
      ),
    );
  }
}
