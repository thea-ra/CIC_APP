import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomeDetailSummary extends StatelessWidget {
  const CustomeDetailSummary(
      {super.key, this.svgpic, this.title, this.trialing});
  final String? svgpic;
  final String? title;
  final String? trialing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            '$svgpic',
            color: Colors.red,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '$title',
                style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
            ),
          ),
          Text(
            '$trialing',
            style: const TextStyle(
                fontFamily: 'DMSans',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000)),
          )
        ],
      ),
    );
  }
}
