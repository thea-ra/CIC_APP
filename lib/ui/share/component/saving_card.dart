// ignore_for_file: unused_local_variable

import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/controller/card_controller.dart';
import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:cic_project/ui/share/component/pop_Menuitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SavingCard extends StatelessWidget {
  const SavingCard(
      {super.key, this.color, this.title, this.subtitle, this.amount});
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    final con = Get.put(CardController());
    final app = Get.put(AppTextStyle());
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: 88,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: color),
          child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(children: [
                Container(
                  width: 4,
                  color: Colors.red,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffAFAFAF),
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 12, right: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '$title',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0A0B09),
                                      fontFamily: 'DMSans'),
                                ),
                                Text('$subtitle',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0A0B09),
                                        fontFamily: 'DMSans'))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PopupMenuButton(
                                    padding: EdgeInsets.zero,
                                    position: PopupMenuPosition.under,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    itemBuilder: ((context) => <PopupMenuEntry>[
                                          const PopupMenuItem(
                                              padding: EdgeInsets.zero,
                                              child: Popupmenuitem(
                                                svgpicture:
                                                    'asset/svg/edits.svg',
                                                text: 'Edit',
                                              )),
                                          const PopupMenuDivider(),
                                          const PopupMenuItem(
                                              padding: EdgeInsets.zero,
                                              child: Popupmenuitem(
                                                svgpicture:
                                                    'asset/svg/history.svg',
                                                text: 'Cancel Application',
                                              ))
                                        ]),
                                    child: SizedBox(
                                      width: 20,
                                      height: 18,
                                      child: SvgPicture.asset(
                                        'asset/svg/menu.svg',
                                        color: Colors.black,
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('$amount',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0A0B09),
                                          fontFamily: 'DMSans')),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ),
                )
              ])),
        ));
  }
}
