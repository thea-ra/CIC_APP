import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customeSearchboxd(
    String svgpic, String text, Color color, Function(String)? onchange) {
  return Container(
    width: double.infinity,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 12,
      ),
      child: Row(children: [
        SvgPicture.asset(svgpic),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SizedBox(
            width: 200,
            child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'Search'),
                onChanged: onchange),
          ),
        )
      ]),
    ),
  );
}
