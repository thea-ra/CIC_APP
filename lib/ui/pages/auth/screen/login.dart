import 'dart:ui';

import 'package:cic_project/ui/pages/auth/controller/login_controller.dart';
import 'package:cic_project/ui/share/component/textfiel.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helper/globle_data.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key, required this.onClickSignin});
  final VoidCallback onClickSignin;

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final formKey = GlobalKey<FormState>();

  final con = Get.put(Login());
  final glo = Get.put(GlobleData());
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
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 44, top: 8),
              child: Row(
                children: const [
                  Text(
                    'Welcome back to',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0A0B09)),
                  ),
                  Text(
                    'CiC Mobile App',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0A0B09)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
                child: Column(
                  children: [
                    ComponentTextfiel(
                      text: 'Phone number',
                      icons: 'asset/svg/cell_phone.svg',
                      color: const Color(0xff0F50A4),
                      controller: glo.phoneController.value,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: ComponentTextfiel(
                        text: 'Password',
                        icons: 'asset/svg/Password.svg',
                        color: const Color(0xff0F50A4),
                        controller: glo.passwordController.value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  con.login(context);
                  glo.phoneController.value.clear();
                  glo.passwordController.value.clear();
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
                      'Login',
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
