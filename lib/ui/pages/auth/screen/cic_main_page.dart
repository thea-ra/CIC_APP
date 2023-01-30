import 'package:cic_project/ui/pages/auth/screen/login_Screen.dart';
import 'package:flutter/material.dart';

import '../../../share/component/phone_button.dart';
import 'input_phone_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 310),
              child: Row(
                children: const [
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
              padding: EdgeInsets.only(top: 65, bottom: 8),
              child: Text(
                'Open your new account with',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            const Text(
              'CiC Mobile App',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InputPhoneScreen(
                              onClickSignin: () {},
                            )));
              },
              child: const PhoneBotton(
                svgpic: 'asset/svg/call.svg',
                phoneNumber: 'Phone number',
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 132, left: 98),
                child: Row(
                  children: [
                    const Text(
                      'Are you already has this acoount? ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FirstLoginScreen()));
                      },
                      child: const Text('Login',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
