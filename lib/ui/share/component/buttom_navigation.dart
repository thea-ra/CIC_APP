import 'package:cic_project/ui/pages/qr_code/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    this.child,
    Key? key,
  }) : super(key: key);

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/svg/homesvg.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/svg/Qrcode.svg'),
            label: 'QR Scan',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/svg/event.svg'),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('asset/svg/account.svg'),
            label: 'Account',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
        selectedLabelStyle: const TextStyle(
            fontSize: 11, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }

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
        GoRouter.of(context).go('/account');

        break;
      case 3:
        GoRouter.of(context).go('/account');

        break;
    }
  }
}
