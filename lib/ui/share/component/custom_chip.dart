import 'package:flutter/material.dart';

class CustomeChip extends StatelessWidget {
  const CustomeChip({super.key, this.title, this.isSelection = false});
  final String? title;
  final bool isSelection;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 35,
      decoration: BoxDecoration(
        color: isSelection ? const Color(0xffB3C6E0) : const Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.2,
            blurRadius: 2,
            offset: const Offset(0, 0.2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Text(
        '$title',
        style: TextStyle(
            // ignore: unnecessary_const
            fontSize: 12,
            fontFamily: 'DMSans',
            color: isSelection
                ? const Color(0xff0F50A4)
                : const Color(0xff000000)),
      )),
    );
  }
}
