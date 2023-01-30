import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../util/helper/globle_data.dart';
import '../controller/set_password_controller.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool visible = true;
  bool checklength = false;
  bool checkchar = false;
  bool checknum = false;
  @override
  Widget build(BuildContext context) {
    final con = Get.put(Setpassword());
    final globle = Get.put(GlobleData());
    String checking = '';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDEE8F3),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffDEE8F3)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 133, right: 132),
              child: Stack(
                children: [
                  Image.asset('asset/image/cic.png'),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 28),
                    child: Container(
                        decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.2),
                    )),
                  ),
                  Image.asset('asset/image/cic.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                'Open your new account with',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0A0B09)),
              ),
            ),
            const Text(
              'CiC Mobile App',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0A0B09)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffCEDCEC),
                    border: Border.all(color: Colors.blue)),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          top: 10,
                          bottom: 10,
                        ),
                        child: SvgPicture.asset('asset/svg/Password.svg')),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        width: 270,
                        child: TextFormField(
                          controller: globle.passwordController.value,
                          onChanged: (value) {
                            setState(() {
                              value.length >= 8
                                  ? checklength = true
                                  : checklength = false;

                              value.contains(RegExp(r'[A-Z]'))
                                  ? checkchar = true
                                  : checkchar = false;

                              value.contains(RegExp(r'[0-9]'))
                                  ? checknum = true
                                  : checknum = false;
                            });
                          },
                          obscureText: visible,
                          decoration: const InputDecoration(
                              border: InputBorder.none, hintText: 'Password'),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            visible = !visible;
                            debugPrint('Hello');
                          });
                        },
                        child: SvgPicture.asset('asset/svg/Hide.svg'))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Your pasword must have'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(
                              checklength
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: checklength
                                  ? Colors.green
                                  : const Color(0xff848F92),
                            ),
                            Text(
                              '8 or more characters',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: checklength
                                      ? Colors.green
                                      : const Color(0xff848F92),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Row(
                            children: [
                              Icon(
                                  checkchar
                                      ? Icons.check_circle
                                      : Icons.radio_button_unchecked,
                                  color: checkchar
                                      ? Colors.green
                                      : const Color(0xff848F92)),
                              Text(
                                'upper & lowercase letter',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: checkchar
                                        ? Colors.green
                                        : const Color(0xff848F92),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                                checknum
                                    ? Icons.check_circle
                                    : Icons.radio_button_unchecked,
                                color: checknum
                                    ? Colors.green
                                    : const Color(0xff848F92)),
                            Text(
                              'at least one number ',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: checknum
                                      ? Colors.green
                                      : const Color(0xff848F92),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
              child: GestureDetector(
                onTap: () {
                  con.setPassword(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff0F50A4),
                      border: Border.all(color: Colors.white)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 14, bottom: 14),
                    child: Center(
                        child: Text(
                      'Continous',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'DM Sans'),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
