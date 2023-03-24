import 'package:flutter/material.dart';

Widget customeInfosub(String? title, String? about, Color color) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: const TextStyle(
              fontFamily: 'DMSans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff0A0B09)),
        ),
        Text(
          '$about',
          style: TextStyle(
              fontFamily: 'DMSans',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: color),
        ),
      ],
    ),
  );
}
