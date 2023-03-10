import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreviewForm extends StatelessWidget {
  const PreviewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 1,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Preview Form',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'DMSans',
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        actions: [SvgPicture.asset('asset/svg/Locations.svg')],
      ),
    );
  }
}
