import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import '../../../util/helper/local_storage.dart';

class SlashSrceen extends StatefulWidget {
  const SlashSrceen({super.key});

  @override
  State<SlashSrceen> createState() => _SlashSrceenState();
}

class _SlashSrceenState extends State<SlashSrceen> {
  onNavigate() {
    Future.delayed(const Duration(seconds: 1), () async {
      final token = await LocalStorage.getStringValue(key: 'token');
      // ignore: unrelated_type_equality_checks

      if (token != '') {
        // ignore: use_build_context_synchronously
        context.go('/');
      } else {
        // ignore: use_build_context_synchronously
        context.go('/login');
      }
    });
  }

  @override
  void initState() {
    onNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 170, left: 20, right: 20),
            child: Center(
              child: Lottie.asset('asset/lotties/welcome.json'),
            ),
          ),
          LoadingAnimationWidget.fourRotatingDots(
            color: Colors.blue,
            size: 30,
          ),
          const Text(
            'Welcome to CIC',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }
}
