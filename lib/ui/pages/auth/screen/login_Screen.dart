import 'package:cic_project/ui/pages/auth/screen/cic_main_page.dart';
import 'package:cic_project/ui/share/component/phone_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class FirstLoginScreen extends StatefulWidget {
  const FirstLoginScreen({super.key});

  @override
  State<FirstLoginScreen> createState() => _FirstLoginScreenState();
}

class _FirstLoginScreenState extends State<FirstLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff4483CB),
                Color(0xff83A9D2),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 42, left: 310),
                child: Row(
                  children: [
                    Text(
                      'En',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.arrow_drop_down_circle,
                        size: 18,
                        color: Color(0xff0F50A4),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 52, left: 133, right: 132),
                child: Center(
                  child: Image.asset('asset/image/cic.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 61, left: 10, right: 10.5),
                child: Center(
                  child: Image.asset('asset/image/Frame.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 8),
                child: Text(
                  'Welcome back to CIC Mobile App',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserLogin(
                                onClickSignin: () {},
                              )));
                },
                child: const PhoneBotton(
                  svgpic: 'asset/svg/cell_phone.svg',
                  phoneNumber: 'Phone number',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UserLogin(onClickSignin: () {})));
                },
                child: const PhoneBotton(
                  svgpic: 'asset/svg/Password.svg',
                  phoneNumber: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 145,
                      height: 1,
                      color: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text('Or'),
                    ),
                    Container(
                      width: 145,
                      height: 1,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('asset/svg/shareface.svg'),
                  const Text('Login with face ID',
                      style: TextStyle(fontSize: 12, color: Colors.white))
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 22, left: 98),
                  child: Row(
                    children: [
                      const Text(
                        'Do not you have account?',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()));
                        },
                        child: const Text('Register',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
