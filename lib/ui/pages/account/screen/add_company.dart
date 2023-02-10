import 'package:cic_project/ui/pages/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../share/component/button.dart';
import '../../../share/component/custome_textfiel_uppdateinfo.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({super.key});
  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final con = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0.5,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              context.go('/account');
            },
            child: const Icon(
              Icons.close_rounded,
              color: Colors.black,
            )),
        title: const Text(
          'Add Company',
          style: TextStyle(
              fontFamily: 'DMSans',
              fontSize: 18,
              color: Color(0xff0D1F3C),
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Center(
                          child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(width: 3, color: Colors.white),
                        ),
                        width: 100,
                        height: 100,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  con.datamemeber.value.profile.toString()),
                              fit: BoxFit.contain,
                            ),
                            border: Border.all(width: 3, color: Colors.blue),
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      )),
                    ),
                    const Text(
                      'Change profile',
                      style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 18,
                          color: Color(0xff0F50A4),
                          fontWeight: FontWeight.w700),
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.fullname,
                      onchange: (value) {
                        con.user.value =
                            con.user.value.copyWith(fullname: value);
                      },
                      text: 'Name',
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.title,
                      onchange: (value) {
                        con.user.value = con.user.value.copyWith(title: value);
                      },
                      text: 'Title',
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.phone,
                      onchange: (value) {
                        con.user.value = con.user.value.copyWith(phone: value);
                      },
                      text: 'Phone',
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.email,
                      onchange: (value) {
                        con.user.value = con.user.value.copyWith(email: value);
                      },
                      text: 'Email',
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.address,
                      onchange: (value) {
                        con.user.value =
                            con.user.value.copyWith(address: value);
                      },
                      text: 'Telegram',
                    ),
                    TextFieldInput(
                      initialval: con.datamemeber.value.title,
                      onchange: (value) {
                        con.user.value = con.user.value.copyWith(title: value);
                      },
                      text: 'Website',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                label: Text('About Us'),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomeButton(
                      text: 'Cancel',
                      color: Color(0xff0F50A4),
                    ),
                  ),
                  CustomeButton(
                    text: 'Done',
                    color: Color(0xffFFFFFF),
                    background: Color(0xff0F50A4),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
