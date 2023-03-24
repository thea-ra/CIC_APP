import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutFIFScreen extends StatelessWidget {
  const AboutFIFScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F50A4),
        automaticallyImplyLeading: true,
        title: Row(children: [
          SvgPicture.asset('asset/svg/cic_logo.svg'),
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text(
              'About FIF',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans'),
            ),
          )
        ]),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffAFAFAF),
                  blurRadius: 2,
                  offset: Offset(0, 0.22), // Shadow position
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, top: 16, bottom: 16),
              child: Row(
                children: [
                  const Expanded(
                      child: Text(
                    'ABOUT  EF',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DMSans'),
                  )),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DMSans'),
                    ),
                  ),
                  SvgPicture.asset(
                    'asset/svg/menulist.svg',
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue,
                Colors.black,
              ],
            )),
          )
        ],
      ),
    );
  }
}
