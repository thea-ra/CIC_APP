import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxInput extends StatelessWidget {
  const BoxInput({super.key, this.title, this.svgpic});
  final String? title;
  final String? svgpic;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: const Color(0xffAFAFAF)),
          color: const Color(0xffFFFFFF)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 20.51, top: 16, bottom: 16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '$title',
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff464646)),
          ),
          SvgPicture.asset(
            '$svgpic',
            width: 12.91,
            height: 12.91,
          )
        ]),
      ),
    );
  }
}
