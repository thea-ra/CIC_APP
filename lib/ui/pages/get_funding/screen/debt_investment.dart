import 'package:flutter/material.dart';

import '../../../share/component/get_funding/custom_card_funding.dart';


class DebtInvestment extends StatelessWidget {
  const DebtInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Recently Applications',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff464646)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: CustomFundingCard(
              title: 'Flexible Solutions',
              elip: 'asset/svg/elip.svg',
              timesvg: 'asset/svg/clocks.svg',
              status: 'New',
              subtitle: '04 March 2021 at 10:30',
              svgpic: 'asset/svg/report 2.svg',
            ),
          )
        ],
      ),
    );
  ;
  }
}