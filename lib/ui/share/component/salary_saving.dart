import 'package:flutter/material.dart';

class Saving extends StatelessWidget {
  const Saving({super.key, this.color, this.text, this.title});
  final Color? color;
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title',
          style: const TextStyle(
              fontFamily: 'DMSans',
              fontSize: 14,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w400),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                Icons.circle,
                color: color,
                size: 14,
              ),
            ),
            Text('$text',
                style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700))
          ],
        )
      ],
    );
  }
}
