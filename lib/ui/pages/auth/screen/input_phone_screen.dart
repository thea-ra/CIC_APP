import 'dart:ui';

import 'package:cic_project/ui/share/component/botton_component.dart';
import 'package:cic_project/ui/share/component/textfiel.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helper/globle_data.dart';
import '../controller/register_controller.dart';
import '../controller/request_opt_controller.dart';

class InputPhoneScreen extends StatefulWidget {
  const InputPhoneScreen({super.key, required this.onClickSignin});
  final VoidCallback onClickSignin;
  @override
  State<InputPhoneScreen> createState() => _InputPhoneScreenState();
}

class _InputPhoneScreenState extends State<InputPhoneScreen> {
  final formKey = GlobalKey<FormState>();
  final register = Get.put(Register());
  final request = Get.put(RequestOTP());
  final con = Get.put(GlobleData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffDEE8F3)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 122, left: 133, right: 132),
              child: Stack(
                children: [
                  Image.asset('asset/image/cic.png'),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 28),
                    child: Container(
                        decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.2),
                    )),
                  )
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
            Expanded(
              child: Column(
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 24, left: 20, right: 20),
                      child: ComponentTextfiel(
                        icons: 'asset/svg/cell_phone.svg',
                        text: 'Phone number',
                        controller: con.phoneController.value,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: GestureDetector(
                  onTap: () {
                    register.sentNum(context);
                    request.sentOTP(context);
                  },
                  child: const Button(
                    text: 'Get OTP',
                    colors: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
