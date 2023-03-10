import 'package:flutter/material.dart';

class CustomeTextFormField extends StatefulWidget {
  const CustomeTextFormField(
      {super.key,
      this.isclick,
      this.type,
      this.color,
      this.label,
      this.validated,
      this.controller});
  final bool? isclick;
  final TextInputType? type;
  final Color? color;
  final String? label;
  final bool? validated;
  final TextEditingController? controller;

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

RegExp digitValidator = RegExp("[0-9]+");
bool isANumber = true;

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your user name.';
          } else if (value.contains('@')) {
            return 'Please don\'t use the @ char.';
          }

          return null;
        },
        onChanged: (inputValue) {
          if (inputValue.isEmpty || digitValidator.hasMatch(inputValue)) {
            setValidator(true);
          } else {
            setValidator(false);
          }
        },
        enabled: widget.isclick,
        controller: widget.controller,
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
