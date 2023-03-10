import 'package:cic_project/ui/pages/qr_code/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    this.child,
    Key? key,
  }) : super(key: key);

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget? child;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/')) {
      return 0;
    }
    if (location.startsWith('/income')) {
      return 1;
    }
    if (location.startsWith('/event')) {
      return 2;
    }
    if (location.startsWith('/account')) {
      return 3;
    }
    return 0;
  }
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        elevation: 3,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          // color: AppColor.mainColor,
          fontFamily: 'DM San',
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: 'DM San',
          // color: AppColor.darkTextColor,
        ),
        selectedItemColor: const Color(0xff0F50A4),
        selectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.51),
              child: SvgPicture.asset(
                'asset/svg/homesvg.svg',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.53),
              child: SvgPicture.asset('asset/svg/Qrcode.svg',
                  width: 20, height: 20),
            ),
            label: 'QR Scan',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.51),
              child: SvgPicture.asset('asset/svg/event.svg',
                  width: 20, height: 20),
            ),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset('asset/svg/account.svg',
                  width: 20, height: 20),
            ),
            label: 'Account',
          ),
        ],
        currentIndex: ScaffoldWithNavBar._calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
        break;
      case 1:
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
          builder: (context) => const QRCodeScreen(),
        ));
        break;
      case 2:
        GoRouter.of(context).go('/event');

        break;
      case 3:
        GoRouter.of(context).go('/account');

        break;
    }
  }
}
