import 'package:flutter/cupertino.dart';

import '../../../../../../share/component/cusotm_myinvestment.dart/custome_card_coupon.dart';

class CouponSchedule extends StatelessWidget {
  const CouponSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'All Transaction',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w500,
                color: Color(0xff0A0B09)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            '18 Feb 2023',
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400,
                color: Color(0xff0A0B09)),
          ),
        ),
        CustomeCouponCard(
          title: 'Coupon earned',
          amount: '10000',
        )
      ],
    );
  }
}
