import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CustomeNoEquity extends StatelessWidget {
  const CustomeNoEquity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('asset/svg/equity.svg'),
        const Text(
          'Equity Investment',
          style: TextStyle(
              fontFamily: 'DMSans',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff0F50A4)),
        ),
      ],
    );
  }
}
