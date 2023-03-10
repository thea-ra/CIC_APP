import 'package:flutter/material.dart';

Widget createButton(String title, Color color) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
    child: Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF)),
          ),
        ),
      ),
    ),
  );
}
