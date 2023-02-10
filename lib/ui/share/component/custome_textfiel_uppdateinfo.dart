import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/account/controller/account_controller.dart';

class TextFieldInput extends StatefulWidget {
  const TextFieldInput(
      {super.key,
      this.text,
      this.initialval,
      required this.onchange,
      this.isValidate,
      this.color});

  final String? initialval;
  final ValueChanged<String>? onchange;

  final String? text;
  final bool? isValidate;
  final Color? color;

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  final con = Get.put(AccountController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 28, right: 20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: TextFormField(
              initialValue: widget.initialval,
              onChanged: (v) {
                setState(() {});
                widget.onchange?.call(v);
              },
              decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: widget.color,
                  label: Text(widget.text!),
                  hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'DMSans',
                      color: Color(0xff111111),
                      fontWeight: FontWeight.w500),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withAlpha(80), width: 0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ))),
            ),
          ),
          widget.isValidate == true
              ? const Text('this field is required')
              : Container(),
        ],
      ),
    );
  }
}
