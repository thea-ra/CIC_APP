import 'package:cic_project/ui/pages/event/controller/event_controller.dart';
import 'package:cic_project/ui/pages/event/controller/registered_member_controller.dart';
import 'package:cic_project/ui/share/component/custome_event/custome_card_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomeRegistered extends StatelessWidget {
  const CustomeRegistered({super.key});

  @override
  Widget build(BuildContext context) {
    final con = Get.put(EventController());
    final getcon = Get.put(RegisterContoller());
    return Column(children: [
      Container(
        width: double.infinity,
        height: 63,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 0.2), // changes position of shadow
          ),
        ], color: const Color(0xffFFFFFF)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  getcon.clearList();
                  Navigator.pop(context);
                },
                child: SvgPicture.asset('asset/svg/close.svg'),
              ),
              const Text(
                'Registered Members',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff212525)),
              ),
              Text(
                '${con.eventdetail.value.registernumber}',
                style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0F50A4)),
              )
            ],
          ),
        ),
      ),
      Obx(
        () => getcon.isloading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: getcon.registerdlist.map((element) {
                    return CustomeCardRegistered(
                      companyName: element.companyName ?? '',
                      network: element.image,
                      event: element.events ?? '',
                      username: element.participantname ?? '',
                    );
                  }).toList(),
                )),
      )
    ]);
  }
}
