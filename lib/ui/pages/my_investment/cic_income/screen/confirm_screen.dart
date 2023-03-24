import 'package:cic_project/ui/pages/my_investment/cic_equity/model/cic_fixed_income/income/income.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../share/component/custome_event/custome_button_submit.dart';

class DetailSummary extends StatelessWidget {
  const DetailSummary({super.key, required ModelIncome modelIncome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Detail Summary',
          style: TextStyle(
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
              fontFamily: 'DMSans',
              color: Color(0xff000000)),
        ),
        elevation: 1,
        backgroundColor: const Color(0xffFFFFFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffAFAFAF),
                      blurRadius: 2,
                      offset: Offset(0, 0.22), // Shadow position
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff0F50A4),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffAFAFAF),
                              blurRadius: 2,
                              offset: Offset(0, 0.22), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('asset/svg/cictran.svg'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Invest Amount',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'DMSans',
                                        fontSize: 12,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text('200000',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'DMSans',
                                            fontSize: 20,
                                            color: Color(0xffFFFFFF))),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: DottedLine(
                      dashLength: 10,
                      dashGapLength: 7,
                      dashColor: Colors.grey,
                      lineThickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 28),
                    child: Row(
                      children: [
                        Image.asset('asset/image/aba.png'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'ABA Bank',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'DMSans',
                                    fontSize: 16,
                                    color: Color(0xff0A0B09)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text('Account Name:  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'DMSans',
                                        fontSize: 12,
                                        color: Color(0xff000000))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 16, bottom: 24),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('000211555'),
                            SvgPicture.asset('asset/svg/copyicon.svg')
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.go('/myinvest');
            },
            child: createButton(
                'Close', const Color(0xff0F50A4), const Color(0xffFFFFFF)),
          )
        ],
      ),
    );
  }
}
