import 'package:cic_project/ui/pages/account/controller/account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../share/component/button.dart';
import '../../../share/component/custome_textfiel_uppdateinfo.dart';
import '../controller/showAdap_controller.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({super.key});
  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final con = Get.put(AccountController());
  final showadap = Get.put(ShowAdaptive());

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
                                  con.companyData.value.companylogo.toString()),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(width: 3, color: Colors.blue),
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        showadap.showAdapticvebottom(
                            context, con.getCompanylog);
                      },
                      child: const Text(
                        'Change profile',
                        style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 18,
                            color: Color(0xff0F50A4),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    TextFieldInput(
                      initialval: con.companyData.value.companyname,
                      onchange: (value) {
                        con.compareVal.value =
                            con.compareVal.value.copyWith(companyname: value);
                      },
                      text: 'Name',
                    ),
                    TextFieldInput(
                      initialval: con.companyData.value.companyslogan,
                      onchange: (value) {
                        con.compareVal.value =
                            con.compareVal.value.copyWith(companyslogan: value);
                      },
                      text: 'Title',
                    ),
                    TextFieldInput(
                      initialval: con.companyData.value.phone,
                      onchange: (value) {
                        con.compareVal.value =
                            con.compareVal.value.copyWith(phone: value);
                      },
                      text: 'Phone',
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
                      text: 'Telegram',
                    ),
                    TextFieldInput(
                      initialval: con.companyData.value.website,
                      onchange: (value) {
                        con.compareVal.value =
                            con.compareVal.value.copyWith(website: value);
                      },
                      text: 'Website',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffF2F2F2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 0),
                          child: TextFormField(
                            initialValue:
                                con.companyData.value.personalinterest,
                            onChanged: (value) {
                              con.compareVal.value = con.compareVal.value
                                  .copyWith(personalinterest: value);
                            },
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
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffF2F2F2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 0),
                          child: TextFormField(
                            initialValue:
                                con.companyData.value.companyproductandservice,
                            onChanged: (value) {
                              con.compareVal.value = con.compareVal.value
                                  .copyWith(companyproductandservice: value);
                            },
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
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomeButton(
                      text: 'Cancel',
                      color: Color(0xff0F50A4),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      con.updataCompany(context, con.companyData.value.id);
                    },
                    child: const CustomeButton(
                      text: 'Done',
                      color: Color(0xffFFFFFF),
                      background: Color(0xff0F50A4),
                    ),
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
