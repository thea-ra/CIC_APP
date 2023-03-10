import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CustomeCupertino extends StatelessWidget {
  const CustomeCupertino(
      {super.key,
      required this.widget,
      this.svgpic,
      this.trailing,
      this.svgtrailing});
  final Widget widget;
  final String? svgpic;
  final String? svgtrailing;
  final String? trailing;
  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
        body: Builder(
            builder: (context) => CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                      transitionBetweenRoutes: false,
                      leading: SvgPicture.asset('$svgpic'),
                      middle: const Text(
                        'Registered Members',
                        style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff212525)),
                      ),
                      trailing: GestureDetector(
                        child: const Icon(Icons.arrow_upward),
                        onTap: () =>
                            CupertinoScaffold.showCupertinoModalBottomSheet(
                          enableDrag: false,
                          context: context,
                          builder: (context) => widget,
                        ),
                      )),
                  child: const Text(''),
                )));
  }
}
