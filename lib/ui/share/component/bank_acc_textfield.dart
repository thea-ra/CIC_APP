import 'package:flutter/material.dart';

class BankTextField extends StatelessWidget {
  const BankTextField({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextFormField(
          decoration: InputDecoration(
              filled: true, //<-- SEE HERE
              fillColor: const Color(0xffF2F2F2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: text,
              label: Text(
                '$text',
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'DMSans'),
              )),
        ));
  }
}
