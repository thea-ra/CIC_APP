import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key, this.color, this.text, this.background});
  final Color? color;
  final String? text;
  final Color? background;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff0F50A4)),
          borderRadius: BorderRadius.circular(8),
          color: background),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Text(
          text.toString(),
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w700,
              color: color),
        ),
      )),
    );
  }
}
