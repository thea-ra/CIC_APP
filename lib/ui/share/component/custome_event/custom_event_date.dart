import 'package:flutter/material.dart';

class EvenDate extends StatelessWidget {
  const EvenDate({super.key});

  @override
  Widget build(BuildContext context) {
    final date = [
      '2022',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
      '2023',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Row(
          children: date.map((e) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                e,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }).toList(),
        ));
  }
}
