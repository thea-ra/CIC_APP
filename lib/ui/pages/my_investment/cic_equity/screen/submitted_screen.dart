import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../share/component/custome_event/custome_button_submit.dart';

class SubmitScreen extends StatelessWidget {
  const SubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F50A4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Column(
            children: [
              Image.asset('asset/image/rightcheck.png'),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Success",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "The UT Subscription request ",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              const Expanded(
                child: Text(
                  "has been submited",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: createButton(
                      'Done', const Color(0xffFFFFFF), const Color(0xff0F50A4)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
