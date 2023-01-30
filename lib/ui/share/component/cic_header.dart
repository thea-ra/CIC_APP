import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget {
  const Header({super.key, this.title, this.svgpic});
  final String? title;
  final String? svgpic;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff12539F),
      leading: InkWell(
          onTap: () {
            context.go('/');
          },
          child: const Icon(Icons.arrow_back)),
      elevation: 0,
      title: Row(
        children: [
          SvgPicture.asset(svgpic.toString()),
          Padding(
            padding: const EdgeInsets.only(left: 10.5),
            child: Text(
              title.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffF2F2F2)),
            ),
          )
        ],
      ),
    );
  }
}
