import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../custome_event/custome_button_submit.dart';
import 'cutome_subcription.dart';

class SubScribeDetail extends StatelessWidget {
  const SubScribeDetail(
      {super.key,
      this.id,
      this.status,
      this.investorID,
      this.investorname,
      this.price,
      this.subscription,
      this.paymeentstatus,
      this.time,
      this.totalsubcript,
      this.paidamount});
  final int? id;
  final String? status;
  final String? time;
  final String? investorID;
  final String? investorname;
  final String? price;
  final String? subscription;
  final String? paymeentstatus;
  final String? totalsubcript;
  final String? paidamount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('asset/image/transaction.png'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Subscription',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0A0B09)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          '$time',
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0A0B09)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'ID: $id',
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0A0B09)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              customeInfosub(
                  'Subscription Status', status, const Color(0xff75BF72)),
              customeInfosub(
                  'Investor ID', '$investorID', const Color(0xff0A0B09)),
              customeInfosub(
                  'Investor Name', investorname, const Color(0xff0A0B09)),
              const SizedBox(
                height: 20,
              ),
              customeInfosub(
                  'Price per UI', '$subscription', const Color(0xff0A0B09)),
              customeInfosub('Price per UI', '$price', const Color(0xff0A0B09)),
              customeInfosub(
                  'Payment Status', paymeentstatus, const Color(0xff6D7174)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffAFAFAF).withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(children: [
                customeInfosub('Total Subscription Cost: ',
                    '$totalsubcript USD', const Color(0xffED1E26)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: customeInfosub('Paid Amount: ', '$paidamount USD',
                      const Color(0xff0F50A4)),
                ),
                Container(
                    width: double.infinity,
                    height: 1,
                    color: const Color(0xff0A0B09).withOpacity(0.2)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: customeInfosub('Amount to pay: ', '$paidamount USD',
                      const Color(0xffED1E26)),
                ),
              ]),
            ),
          ),
        ),
        GestureDetector(
            onTap: () {
              context.pop();
            },
            child: createButton(
                'Close', const Color(0xff0F50A4), const Color(0xffFFFFFF))),
      ],
    );
  }
}
