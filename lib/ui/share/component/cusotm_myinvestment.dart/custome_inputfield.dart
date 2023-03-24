import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../pages/home/controller/home_controller.dart';
import '../../../pages/my_investment/cic_equity/controller/ut_subscribe_controller.dart';

class CustomeTextFormField extends StatefulWidget {
  const CustomeTextFormField({
    super.key,
    this.isclick,
    this.type,
    this.color,
    this.label,
    this.validated,
  });
  final bool? isclick;
  final TextInputType? type;
  final Color? color;
  final String? label;
  final bool? validated;

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

RegExp digitValidator = RegExp("[0-9]+");
bool isANumber = true;

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  final con = Get.put(UTController());
  final getcon = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        onChanged: (inputValue) {
          con.utval.value = inputValue;
          con.total = double.parse(inputValue);
        },
        enabled: widget.isclick,
        keyboardType: widget.type,
        decoration: InputDecoration(
            fillColor: widget.color,
            filled: true,
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Color(0xff464646),
                width: 1,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Color(0xff464646),
                width: 1,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Color(0xff0F50A4),
              ),
            ),
            labelText: widget.label,
            hintText: widget.label,
            labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'DMSans')),
      ),
    );
  }

  void setValidator(valid) {
    setState(() {
      isANumber = valid;
    });
  }
}
