import 'package:cic_project/ui/share/component/decore_button.dart';
import 'package:cic_project/ui/share/transfer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cic_aba_transer.dart';

class TransterPage extends StatelessWidget {
  const TransterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ScaffoldWithNavBar(child: Container()),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(
          Icons.close,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'C1: Fixed income fund',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'DMSans',
              color: Color(0xff0D1F3C)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 20, right: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff0F50A4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 66.76, bottom: 36.66),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 31.97),
                        child: SvgPicture.asset('asset/svg/trading.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27.92),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 15),
                              child: Text(
                                'Investment Amount',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ),
                            Text('\$2,0000000',
                                style: TextStyle(
                                    fontSize: 19.9322,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFFFFFF)))
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 28),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AbaTransfer(),
                            ));
                      },
                      child: const Transfer(
                        svgpic: 'asset/image/aba.png',
                        title: 'ABA Account',
                        subtitle: 'Account name',
                        name: 'Mak chankariya',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 18.5),
                    child: BoxInput(
                      svgpic: 'asset/svg/copy.svg',
                      title: '002 302 943',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 28),
                    child: Transfer(
                      svgpic: 'asset/image/acleda.png',
                      title: 'Acleda Account',
                      subtitle: 'Account name',
                      name: 'Mak chankariya',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 18.5, bottom: 24),
                    child: BoxInput(
                      svgpic: 'asset/svg/copy.svg',
                      title: '002 302 943',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
