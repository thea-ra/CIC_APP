import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.text, this.colors});
  final String? text;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff0F50A4),
          border: Border.all(color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.only(top: 14, bottom: 14),
        child: Center(
            child: Text(
          text.toString(),
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: colors,
              fontFamily: 'DM Sans'),
        )),
      ),
    );
  }
}
