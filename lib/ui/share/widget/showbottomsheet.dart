import 'package:flutter/material.dart';

Future showButtomSheet(BuildContext context, String joiner) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Column(
      children: [
        Container(
          height: 55,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xffFFFFFF),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.white,
            //     spreadRadius: 4,
            //     blurRadius: 7,
            //     offset: Offset(0, 3), // changes position of shadow
            //   ),
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios),
                const Text('Register Memeber'),
                Text(joiner)
              ],
            ),
          ),
        )
      ],
    ),
  );
}
