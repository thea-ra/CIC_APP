import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CusotmeUTSummary extends StatelessWidget {
  const CusotmeUTSummary({super.key, this.title, this.svgpic});
  final String? title;
  final String? svgpic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: const TextStyle(
                fontFamily: 'DMSans',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000)),
          ),
          SvgPicture.asset('$svgpic')
        ],
      ),
    );
  }
}
