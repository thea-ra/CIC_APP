import 'package:flutter/material.dart';

class CustomeTransactionCard extends StatelessWidget {
  const CustomeTransactionCard({super.key, this.title, this.date, this.amount});
  final String? title;
  final String? date;
  final String? amount;
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '$title',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0A0B09)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                '$amount',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff0A0B09)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            '$date',
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0A0B09)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'Waiting for subscription',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0F50A4)),
                ),
              ],
            )),
      ),
   
    );
 
  }
}
