import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoDescription extends StatelessWidget {
  const NoDescription({super.key, this.svgpic, this.text});

  final String? svgpic;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: SvgPicture.asset(
                'asset/svg/empty.svg',
                color: Colors.grey,
              ),
            ),
          ),
          const Text(
            'No Descriptions!',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w600,
                color: Color(0xff111111)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'You have not completed your personal profile yet, please go to edit butto to fill in your personal profile',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111111)),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('$svgpic'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$text',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F50A4)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
