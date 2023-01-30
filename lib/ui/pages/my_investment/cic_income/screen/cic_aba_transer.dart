import 'package:flutter/material.dart';

class AbaTransfer extends StatelessWidget {
  const AbaTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff265B81),
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'ABA Transfer',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
              fontFamily: 'DMSans'),
        ),
      ),
      body: Column(),
    );
  }
}
