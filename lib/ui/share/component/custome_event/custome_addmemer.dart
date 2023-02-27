import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMemeber extends StatelessWidget {
  const AddMemeber({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 140,
        height: 34,
        decoration: BoxDecoration(
            color: const Color(0xff0F50A4),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: SvgPicture.asset(
                'asset/svg/adduser.svg',
                color: const Color(0xffFFFFFF),
              ),
            ),
            const Center(
              child: Text('Invite Member',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'DMSans',
                      color: Color(0xffFFFFFF),
                      fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
