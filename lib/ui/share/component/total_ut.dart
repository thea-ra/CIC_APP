import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalUT extends StatelessWidget {
  const TotalUT(
      {super.key,
      this.title,
      this.subtile,
      this.svgpic,
      this.color,
      this.colors});
  final String? title;
  final String? subtile;
  final String? svgpic;
  final Color? color;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          '$svgpic',
          width: 24.5,
          height: 18.35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: colors),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text('$subtile',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: color)),
              )
            ],
          ),
        )
      ],
    );
  }
}
