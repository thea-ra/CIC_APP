import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FixedIncomeFund extends StatelessWidget {
  const FixedIncomeFund({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close_sharp),
        centerTitle: true,
        title: Row(
          children: [
            const Text(
              'Detail Summary',
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans',
                  color: Color(0xff000000)),
            ),
            SvgPicture.asset('asset/svg/.svg')
          ],
        ),
        elevation: 1,
        backgroundColor: const Color(0xffFFFFFF),
      ),
    );
  }
}
