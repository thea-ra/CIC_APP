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
  void initState() {
    // TODO: implement initState
    con.collectionController();

    super.initState();
  }

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
              : InkWell(
                  onTap: () {
                    con.updataCompany(context, con.companyData.value.id);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 18,
                        color: Color(0xff0D1F3C),
                        fontWeight: FontWeight.w500),
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
      body: SingleChildScrollView(
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
              text: 'Company Name',
              controller: con.companyController.value,
            ),
            TextFieldInput(
              text: 'Input Slogan',
              controller: con.sloganController.value,
            ),
            TextFieldInput(
              text: 'Phone Number',
              controller: con.phoneController.value,
            ),
            TextFieldInput(
              text: 'Email',
              controller: con.emailContoller.value,
            ),
            TextFieldInput(
              text: 'Location',
              controller: con.locationController.value,
            ),
            TextFieldInput(
              text: 'Link Website',
              controller: con.aboutController.value,
            )
          ],
        ),
      ),
    );
  }
}
