import 'package:cic_project/ui/pages/account/screen/profile_screen.dart';
import 'package:cic_project/ui/pages/auth/screen/login_Screen.dart';
import 'package:cic_project/ui/pages/home/screen/homePage.dart';
import 'package:cic_project/ui/pages/my_investment/cic_real_estate/screen/my_invest_screen.dart';
import 'package:cic_project/ui/pages/splash/slash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/pages/qr_code/qr_code.dart';
import '../../ui/pages/salary_saving/salary_saving.dart';
import '../../ui/share/component/buttom_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootKey');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/slashscreen',
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavBar(
          key: state.pageKey,
          child: child,
        );
      },
      routes: <RouteBase>[
        // This screen is displayed on the ShellRoute's Navigator.
        GoRoute(
          path: '/',
          name: 'Home Screen',
          builder: (_, state) {
            return HomeScreen(
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: '/qrcode',
          name: 'Qrcode',
          builder: (_, state) {
            return QRCodeScreen(
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
          path: '/account',
          name: 'Account',
          builder: (_, state) {
            return ProfileScreen(
              key: state.pageKey,
            );
          },
        )
      ],
    ),
    GoRoute(
      path: '/myinvest',
      parentNavigatorKey: _rootNavigatorKey,
      name: 'My Investment',
      builder: (_, state) {
        return MyInvest(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/salaryscreen',
      parentNavigatorKey: _rootNavigatorKey,
      name: 'Salary Screen',
      builder: (_, state) {
        return SalarySaving(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/login',
      parentNavigatorKey: _rootNavigatorKey,
      name: 'Login',
      builder: (_, state) {
        return FirstLoginScreen(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/slashscreen',
      name: 'Slash Screen',
      builder: (_, state) {
        return SlashSrceen(
          key: state.pageKey,
        );
      },
    ),
  ],
);
