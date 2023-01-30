import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../util/helper/globle_data.dart';
import '../controller/verity_otp.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final auth = Get.put(VerifyOTP());
  final con = Get.put(GlobleData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDEE8F3),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
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
              padding: const EdgeInsets.only(top: 52, left: 133, right: 132),
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
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'Verify Phone Number',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0F50A4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 79),
              child: Row(
                children: [
                  const Text(
                    'Code is send to ',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0A0B09)),
                  ),
                  Text(
                    con.phoneController.value.text,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0A0B09)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 58, top: 80, right: 57),
                    child: Center(
                      child: PinCodeTextField(
                        length: 4,
                        appContext: context,
                        controller: con.otpController.value,
                        onCompleted: (v) {
                          auth.verifyotp(context);
                        },
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          return true;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Do not recieve code? ',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0A0B09)),
                ),
                GestureDetector(
                  child: const Text(
                    ' Resend Code',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F50A4)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
