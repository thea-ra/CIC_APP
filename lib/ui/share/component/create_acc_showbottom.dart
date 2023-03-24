import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/salary_saving/controller/salary_controller.dart';
import 'package:cic_project/ui/share/component/bank_acc_textfield.dart';
import 'package:cic_project/ui/share/component/dort.dart';
import 'package:cic_project/ui/share/component/showModelbottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../apphelper/textstyle.dart';

class CreateAccButtomSheet extends StatelessWidget {
  const CreateAccButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
  final pop = Get.put(Salarycontroller());
    final con = Get.put(AppTextStyle());
    return Container(
      decoration: const BoxDecoration(),
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
                        const Center(
                            child: Padding(
                          padding: EdgeInsets.only(top: 9.52),
                          child: Setclose(),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: InkWell(
                            onTap: () {
                              pop.isClick.value = false;
                              Navigator.pop(context);
                              showModalBottomSheet(
                                isDismissible: false,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(14.0),
                                  ),
                                ),
                                builder: (context) {
                                  return const InterestRecieve();
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SvgPicture.asset('asset/svg/Mask.svg'),
                                ),
                                Text(
                                  'Edit Bank Account',
                                  textAlign: TextAlign.center,
                                  style: con.textStyle(
                                      'DMSans',
                                      const Color(0xff0D1F3C),
                                      18,
                                      FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: ListView(shrinkWrap: true, children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 34),
                    child: BankTextField(
                      text: 'Bank Name',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 28),
                    child: BankTextField(text: 'Account Name'),
                  ),
                  BankTextField(text: 'Account Name')
                ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
