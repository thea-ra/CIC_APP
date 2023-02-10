import 'package:cic_project/ui/pages/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../share/component/custome_textfiel_uppdateinfo.dart';

class UpdateInfo extends StatefulWidget {
  const UpdateInfo({super.key});
  @override
  State<UpdateInfo> createState() => _UpdateInfoState();
}

class _UpdateInfoState extends State<UpdateInfo> {
  final con = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0.5,
        title: ListTile(
          leading: InkWell(
              onTap: () {
                context.go('/account');
              },
              child: SvgPicture.asset('asset/svg/close.svg')),
          trailing: con.isloading.value
              ? AnimatedSmoothIndicator(
                  activeIndex: con.currentpage.value,
                  count: 3,
                  effect: const ExpandingDotsEffect(dotWidth: 6, dotHeight: 6),
                )
              : Obx(
                  () => InkWell(
                    onTap: con.companyData.value != con.compareVal.value
                        ? () {
                            con.updataCompany(
                                context, con.companyData.value.id);
                          }
                        : null,
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 18,
                          color: con.companyData.value != con.compareVal.value
                              ? Colors.lightBlueAccent
                              : Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
          title: const Text(
            'Edit Company',
            style: TextStyle(
                fontFamily: 'DMSans',
                fontSize: 18,
                color: Color(0xff0D1F3C),
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28),
                child: Center(
                  child: SvgPicture.asset(
                    'asset/svg/updat_logo_cic.svg',
                  ),
                ),
              ),
              const Text(
                'Change Company Logo',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 18,
                    color: Color(0xff0F50A4),
                    fontWeight: FontWeight.w700),
              ),
              TextFieldInput(
                isValidate: con.ischeck.value,
                initialval: con.companyData.value.companyname,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(companyname: value);
                },
                text: 'Company Name',
              ),
              TextFieldInput(
                initialval: con.companyData.value.companyslogan,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(companyslogan: value);
                },
                text: 'Input Slogan',
              ),
              TextFieldInput(
                initialval: con.companyData.value.phone,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(phone: value);
                },
                text: 'Phone Number',
              ),
              TextFieldInput(
                initialval: con.companyData.value.email,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(email: value);
                },
                text: 'Email',
              ),
              TextFieldInput(
                initialval: con.companyData.value.address,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(address: value);
                },
                text: 'Location',
              ),
              TextFieldInput(
                initialval: con.companyData.value.website,
                onchange: (value) {
                  con.compareVal.value =
                      con.compareVal.value.copyWith(website: value);
                },
                text: 'Link Website',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF2F2F2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          label: Text('About Us'), border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF2F2F2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          label: Text('Product & Service'),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
