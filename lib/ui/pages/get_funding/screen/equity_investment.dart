import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../share/component/get_funding/custom_card_funding.dart';


class EquityInvestment extends StatelessWidget {
  const EquityInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recently Applications',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff464646)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () {
                context.go('/getfunding/preview');
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const PreviewForm()));
              },
              child: const CustomFundingCard(
                title: 'Flexible Solutions',
                elip: 'asset/svg/elip.svg',
                timesvg: 'asset/svg/clocks.svg',
                status: 'New',
                subtitle: '04 March 2021 at 10:30',
                svgpic: 'asset/svg/report 2.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
