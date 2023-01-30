import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, this.svgpic, this.text});
  final String? svgpic;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          '$svgpic',
          width: 24,
          height: 24,
          color: const Color(0xff0F50A4),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13.5),
          child: Text(
            '$text',
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'DMSans',
                color: Color(0xff12121F)),
          ),
        )
      ],
    );
  }
}
