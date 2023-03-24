import 'package:cic_project/ui/pages/my_investment/cic_equity/controller/ut_subscribe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../share/component/cusotm_myinvestment.dart/custome_card_transaction.dart';
import '../../../../share/component/cusotm_myinvestment.dart/custome_sub_detail.dart';

class DebtInvestment extends StatelessWidget {
  const DebtInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(UTController());
    return Obx(
      () => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, top: 25, bottom: 25, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('asset/svg/transac.svg'),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Total UT',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0A0B09)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Unpaid UP',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff0A0B09)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              '${con.totalUT} UT',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0A0B09)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '${con.sum} UT',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffED1E26)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Transaction',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0A0B09)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: con.historiesList.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        '${e.date}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0A0B09)),
                      ),
                    ),
                    Column(
                      children: e.history!.map((e) {
                        return GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(8),
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  print(e.transactionid);
                                  return SubScribeDetail(
                                    id: e.transactionid,
                                    status: e.view!.subscriptionstatus!
                                        .toUpperCase(),
                                    paymeentstatus:
                                        e.view!.paymentstatus!.toUpperCase(),
                                    investorID: e.view!.investorid,
                                    subscription:
                                        e.view!.uttosubscribe.toString(),
                                    investorname:
                                        e.view!.investorname!.toUpperCase(),
                                    price: '${e.view!.priceperut} USD',
                                    time: e.time,
                                    totalsubcript:
                                        '${e.view!.totalsubscriptioncost}',
                                    paidamount: '${e.view!.paidamount}',
                                  );
                                });
                          },
                          child: CustomeTransactionCard(
                            title: e.type,
                            date: e.time,
                            amount: '${e.utamount} UT',
                          ),
                        );
                      }).toList(),
                    )
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
