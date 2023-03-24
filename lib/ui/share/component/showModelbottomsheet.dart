// ignore_for_file: file_names

import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/salary_saving/controller/salary_controller.dart';
import 'package:cic_project/ui/share/component/create_acc_showbottom.dart';
import 'package:cic_project/ui/share/component/dort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../apphelper/textstyle.dart';

class InterestRecieve extends StatelessWidget {
  const InterestRecieve({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(AppTextStyle());
    final pop = Get.put(Salarycontroller());
    return SizedBox(
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 63,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.3,
                        offset: Offset(0.1, 0.5), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      children: [
                        const Center(child: Setclose()),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.5),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child:
                                      SvgPicture.asset('asset/svg/close.svg'),
                                ),
                              ),
                              Text(
                                'Interest Recieving Account',
                                style: con.textStyle(
                                    'DMSans',
                                    const Color(0xff0D1F3C),
                                    18,
                                    FontWeight.w700),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => Padding(
                    padding:
                        const EdgeInsets.only(top: 35, left: 22, right: 21),
                    child: InkWell(
                      onTap: () {
                        pop.isClick.value = !pop.isClick.value;
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'asset/svg/logo.svg',
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CiC MM Account',
                                    style: con.textStyle(
                                        'DMSans',
                                        const Color(0xff0A0B09),
                                        14,
                                        FontWeight.w500),
                                  ),
                                  Text(
                                    'Sok Sokon',
                                    style: con.textStyle(
                                        'DMSans',
                                        const Color(0xff0A0B09),
                                        12,
                                        FontWeight.w400),
                                  ),
                                  Text(
                                    'CiC-7-0434-0012(089 933 339)',
                                    style: con.textStyle(
                                        'DMSans',
                                        const Color(0xff0F50A4),
                                        13,
                                        FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                          pop.isClick.value
                              ? SvgPicture.asset('asset/svg/check.svg')
                              : SvgPicture.asset('asset/svg/uncheck.svg')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(14.0),
                    ),
                  ),
                  builder: (context) {
                    return const CreateAccButtomSheet();
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset('asset/svg/plus.svg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Add New Account',
                        style: con.textStyle('DMSans', const Color(0xff0F50A4),
                            16, FontWeight.w500)),
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
