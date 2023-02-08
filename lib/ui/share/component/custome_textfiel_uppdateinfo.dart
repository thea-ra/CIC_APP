import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({super.key, this.text, required this.controller});
  final TextEditingController controller;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 28, right: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 48,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              label: Text(text!),
              hintStyle: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'DMSans',
                  color: Color(0xff111111),
                  fontWeight: FontWeight.w500),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.withAlpha(80), width: 0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(14),
                  ))),
        ),
      ),
    );
  }
}
