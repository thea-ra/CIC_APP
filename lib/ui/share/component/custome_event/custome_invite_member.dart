import 'package:cic_project/ui/pages/event/controller/registered_member_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'custome_button_submit.dart';
import 'custome_member_profile.dart';
import 'custome_search_box.dart';
import 'custome_unregistered.dart';

class CustomeMemmerInvite extends StatefulWidget {
  const CustomeMemmerInvite({super.key});

  @override
  State<CustomeMemmerInvite> createState() => _CustomeMemmerInviteState();
}

class _CustomeMemmerInviteState extends State<CustomeMemmerInvite> {
  @override
  Widget build(BuildContext context) {
    final con = Get.put(RegisterContoller());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      con.close();
                      con.memberlist.clear();
                      con.suggestionlist.clear();
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('asset/svg/close.svg')),
                const Text(
                  'Invite',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff212525)),
                ),
                const Text('')
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: customeSearchboxd('asset/svg/Search.svg', 'Search',
              const Color(0xffF3F3F3), con.searchMember),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 16),
          child: Text(
            'Add a note to your invitation',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff212525)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => con.memberlist.isNotEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(left: 20, top: 16),
                      child: Text(
                        'Selected',
                        style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0A0B09)),
                      ))
                  : Container(),
            ),
            Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: con.memberlist.asMap().entries.map((e) {
                  return customeMemberProfile(
                      '${e.value.profile}', e.value.name, () {
                    con.memberlist
                        .removeWhere((element) => element.id == e.value.id);
                  });
                }).toList()),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 16, bottom: 15),
          child: Text(
            'Suggestion',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xff0A0B09)),
          ),
        ),
        // customeMemberProfile(
        //     "https://pre-cic.z1platform.com/uploads/files/default/default-user-icon.png"),
        Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Obx(
                () => Column(
                    children: con.suggestionlist.isEmpty
                        ? con.userList.asMap().entries.map((e) {
                            return GestureDetector(
                              onTap: () {
                                con.userList[e.key] = con.userList[e.key]
                                    .copyWith(isTap: !e.value.isTap!);
                                if (con.userList[e.key].isTap == true) {
                                  con.addMember(e.value);
                                } else {
                                  con.memberlist.removeWhere(
                                      (element) => element.id == e.value.id);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: CustomeUnRegister(
                                  isTap: e.value.isTap!,
                                  network: e.value.profile ?? '',
                                  username: e.value.name ?? '',
                                  companyName: e.value.position ?? '',
                                ),
                              ),
                            );
                          }).toList()
                        : con.suggestionlist.asMap().entries.map((e) {
                            {
                              return GestureDetector(
                                onTap: () {
                                  con.suggestionlist[e.key] = con
                                      .suggestionlist[e.key]
                                      .copyWith(isTap: !e.value.isTap!);
                                  if (con.suggestionlist[e.key].isTap == true) {
                                    con.addMember(e.value);
                                  } else {
                                    con.memberlist.removeWhere(
                                        (element) => element.id == e.value.id);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 14),
                                  child: CustomeUnRegister(
                                    isTap: e.value.isTap!,
                                    network: e.value.profile ?? '',
                                    username: e.value.name ?? '',
                                    companyName: e.value.position ?? '',
                                  ),
                                ),
                              );
                            }
                          }).toList()),
              )),
        ),
        Obx(
          () => GestureDetector(
            onTap: () {
              con.inviteMember();
            },
            child: createButton(
                'Invite member',
                con.memberlist.isEmpty
                    ? const Color(0xffE0E0E0)
                    : const Color(0xff0F50A4)),
          ),
        )
      ],
    );
  }
}
