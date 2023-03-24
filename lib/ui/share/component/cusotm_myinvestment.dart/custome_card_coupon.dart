import 'package:flutter/material.dart';

class CustomeCouponCard extends StatelessWidget {
  const CustomeCouponCard(
      {super.key, this.title, this.amount, this.color, this.svgpic});
  final String? title;
  final String? amount;
  final Color? color;
  final String? svgpic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 1,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('asset/image/transaction.png'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                    ),
                    child: Text(
                      '$title',
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A0B09)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Unpaid',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF54E5E)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        '+$amount USD',
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
