// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhoneBotton extends StatelessWidget {
  const PhoneBotton({super.key, this.phoneNumber, this.svgpic});
  final String? phoneNumber;
  final String? svgpic;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white)),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 14,
              bottom: 14,
              left: 16,
            ),
            child: Row(
              children: [
                SvgPicture.asset(svgpic.toString()),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    phoneNumber.toString(),
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
