import 'package:cic_project/ui/share/component/custome_event/custom_event_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CutomeTopbar extends StatelessWidget {
  const CutomeTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color(0xff0F50A4),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 44),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(child: EvenDate()),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: SvgPicture.asset(
                  'asset/svg/arrow_award.svg',
                ),
              ),
            ],
          ),
        ));
  }
}
