// ignore_for_file: must_be_immutable

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:passcode_screen/passcode_screen.dart';

import '../../../../cic_equity/controller/user_verify.dart';
import '../../../../cic_equity/model/cic_fixed_income/income/income.dart';
import 'cic_income.dart';

class ScreenPinCode extends StatelessWidget {
  ScreenPinCode({super.key, this.modelIncome});
  ModelIncome? modelIncome;

  @override
  Widget build(BuildContext context) {
    final con = Get.put(VerifyUser());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'DMSans',
                  color: Color(0xffFFFFFF)),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 129),
            child: cicFixedIncome(context),
          ),
          Container(
            color: const Color(0xff000000).withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 40.0,
                sigmaY: 40.0,
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.0)),
              ),
            ),
          ),
          PasscodeScreen(
            backgroundColor: Colors.transparent,
            passwordDigits: 4,
            title: Image.asset('asset/image/Security.png'),
            passwordEnteredCallback: (va) async {
              await con.verifyUser(modelIncome?.id, modelIncome?.hide, context);

              // Navigator.pop(context);
            },
            cancelButton: const Text(''),
            deleteButton: const Text(''),
            shouldTriggerVerification: _verificationNotifier.stream,
          )
        ],
      ),
    );
  }

  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();
}
