import 'package:flutter/material.dart';

Widget createButton(String title, Color color, Color textcolor) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
    child: Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 0.8,
            color: const Color(0xff0F50A4),
          )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w700,
                color: textcolor),
          ),
        ),
      ),
    ),
  );
}
