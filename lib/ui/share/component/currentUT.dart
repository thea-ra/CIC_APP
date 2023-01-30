import 'package:flutter/cupertino.dart';

class CurrentUT extends StatelessWidget {
  const CurrentUT({super.key, this.title, this.subtitle, this.text});
  final String? title;
  final String? subtitle;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff0A0B09)),
        ),
        Row(
          children: [
            Text('$subtitle',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0A0B09))),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('$text',
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff464646))),
            ),
          ],
        )
      ],
    );
  }
}
