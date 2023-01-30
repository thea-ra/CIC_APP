import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cic_project/ui/share/component/dort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QRcodeComponent extends StatelessWidget {
  const QRcodeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Center(child: Setclose()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('asset/svg/close.svg'),
                        ),
                        InkWell(
                          onTap: () {
                            showAdaptiveActionSheet(
                              androidBorderRadius: 0,
                              context: context,
                              actions: <BottomSheetAction>[
                                BottomSheetAction(
                                    title: const Text(
                                      'Downlaod',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff0F50A4)),
                                    ),
                                    onPressed: (context) {}),
                                BottomSheetAction(
                                    title: const Text(
                                      'Share',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff0F50A4)),
                                    ),
                                    onPressed: (context) {}),
                                BottomSheetAction(
                                    title: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff0F50A4)),
                                    ),
                                    onPressed: (context) {
                                      Navigator.pop(context);
                                    }),
                              ],
                            );
                          },
                          child: SvgPicture.asset(
                            'asset/svg/menu.svg',
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Image.asset(
                      'asset/image/aba1.jpg',
                      width: 200,
                      height: 250,
                    ),
                  ),
                  const Text(
                    'User scan QR to see member profile',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'DMSans',
                        color: Color(0xff0A0B09),
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: const Color(0xff0F50A4))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('asset/svg/scan.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Scan QR Code',
                                style: TextStyle(
                                    fontFamily: 'DMSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0F50A4)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
