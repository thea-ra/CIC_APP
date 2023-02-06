import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateInfo extends StatelessWidget {
  const UpdateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0.5,
        title: ListTile(
          leading: SvgPicture.asset('asset/svg/close.svg'),
          trailing: const Text(
            'Done',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 18,
                color: Color(0xff0D1F3C),
                fontWeight: FontWeight.w500),
          ),
          title: const Text(
            'Edit Company',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 18,
                color: Color(0xff0D1F3C),
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: Center(
              child: SvgPicture.asset(
                'asset/svg/updat_logo_cic.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
