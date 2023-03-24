// ignore_for_file: unused_local_variable

import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/controller/card_controller.dart';
import 'package:cic_project/ui/share/apphelper/textstyle.dart';
import 'package:cic_project/ui/share/component/pop_Menuitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../pages/my_investment/cic_equity/model/cic_fixed_income/income/income.dart';

class SavingCard extends StatelessWidget {
  const SavingCard({
    super.key,
    this.color,
    this.title,
    this.subtitle,
    this.amount,
    this.status,
    this.id,
    this.hide,
    this.modelIncome,
  });
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? amount;
  final String? status;
  final int? id;
  final bool? hide;
  final ModelIncome? modelIncome;

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
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffAFAFAF),
                  blurRadius: 2,
                  offset: Offset(0, 0.22), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFFFFFF)),
          child: Row(children: [
            Container(
              margin: EdgeInsets.zero,
              width: 6,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: color),
            ),
            Expanded(
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
                          status != 'confirmed'
                              ? PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  position: PopupMenuPosition.under,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  itemBuilder: ((context) => status == 'new'
                                      ? <PopupMenuEntry>[
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
                                                    'asset/svg/Hide.svg',
                                                text: 'Cancel Application',
                                              ))
                                        ]
                                      : [
                                          PopupMenuItem(
                                              padding: EdgeInsets.zero,
                                              child: GestureDetector(
                                                onTap: () {
                                                  context.go(
                                                      '/myinvest/pincode',
                                                      extra: modelIncome);
                                                },
                                                child: const Popupmenuitem(
                                                  svgpicture:
                                                      'asset/svg/Hide.svg',
                                                  text: 'Hide Contract',
                                                ),
                                              )),
                                          PopupMenuItem(
                                              padding: EdgeInsets.zero,
                                              child: GestureDetector(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) =>
                                                        Container(
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8))),
                                                    ),
                                                    enableDrag: true,
                                                  );
                                                },
                                                child: const Popupmenuitem(
                                                  svgpicture:
                                                      'asset/svg/edits.svg',
                                                  text: 'Rename Title',
                                                ),
                                              )),
                                          const PopupMenuItem(
                                              padding: EdgeInsets.zero,
                                              child: Popupmenuitem(
                                                svgpicture:
                                                    'asset/svg/Document.svg',
                                                text: 'View Agreement',
                                              )),
                                        ]),
                                  child: SizedBox(
                                      width: 20,
                                      height: 18,
                                      child: SvgPicture.asset(
                                          'asset/svg/menuhori.svg')))
                              : Container(),
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
            )
          ]),
        ));
  }
}
