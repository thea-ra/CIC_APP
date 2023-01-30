import 'package:flutter/cupertino.dart';

class Titlesub extends StatelessWidget {
  const Titlesub({super.key, this.title, this.subtile});
  final String? title;
  final String? subtile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: const TextStyle(
              color: Color(0xff464646),
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        Text('$subtile',
            style: const TextStyle(
                color: Color(0xff464646),
                fontSize: 10,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
