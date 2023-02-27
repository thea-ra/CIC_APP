import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key, this.eventby, this.info, this.svgpic});
  final String? eventby;
  final String? info;
  final String? svgpic;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('$svgpic'),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$eventby',
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'DMSans',
                    fontSize: 13),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  '$info',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'DMSans',
                      fontSize: 11),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
