import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer(
      {super.key,
      this.svgpic,
      this.title,
      this.subtitle,
      this.name,
      this.width,
      this.height});
  final String? svgpic;
  final String? title;
  final String? subtitle;
  final String? name;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          '$svgpic',
          width: 48,
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0A0B09)),
              ),
              Row(
                children: [
                  Text('$subtitle',
                      style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff848F92))),
                  Text('$name',
                      style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff848F92))),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
