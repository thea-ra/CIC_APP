import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFundingCard extends StatelessWidget {
  const CustomFundingCard(
      {super.key,
      this.title,
      this.svgpic,
      this.subtitle,
      this.status,
      this.timesvg,
      this.elip});
  final String? title;
  final String? svgpic;
  final String? subtitle;
  final String? elip;
  final String? timesvg;
  final String? status;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 0.2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                '$svgpic',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$title',
                        style: const TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff212525))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 13),
                      child: Row(
                        children: [
                          SvgPicture.asset('$timesvg'),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text('$subtitle',
                                style: const TextStyle(
                                    fontFamily: 'DMSans',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff464646))),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('$elip'),
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Text(
                            '$status',
                            style: const TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0685CF)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
