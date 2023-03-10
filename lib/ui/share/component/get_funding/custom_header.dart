import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('asset/svg/cic_logo.svg'),
            const Padding(
              padding: EdgeInsets.only(left: 10.5),
              child: Text(
                'Get Funding',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                    color: Color(0xffF2F2F2)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: SvgPicture.asset('asset/svg/history.svg'),
            ),
            SvgPicture.asset('asset/svg/airheader.svg'),
          ],
        ),
      ],
    );
  }
}
