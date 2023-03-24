import 'package:cic_project/ui/pages/account/screen/profile_screen.dart';
import 'package:cic_project/ui/pages/account/screen/update_company.dart';
import 'package:cic_project/ui/pages/auth/screen/login_Screen.dart';
import 'package:cic_project/ui/pages/home/screen/homePage.dart';
import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/screen/pending_screen.dart';
import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/screen/pincode_screen.dart';
import 'package:cic_project/ui/pages/privilege/screen/detail_shop.dart';
import 'package:cic_project/ui/pages/privilege/screen/ios_first_page.dart';
import 'package:cic_project/ui/pages/privilege/screen/ios_second_page.dart';
import 'package:cic_project/ui/pages/privilege/screen/previlege_home_screen.dart';
import 'package:cic_project/ui/pages/splash/slash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/pages/account/screen/add_company.dart';
import '../../ui/pages/account/screen/update_user.dart';
import '../../ui/pages/event/screen/up_comming_detail.dart';
import '../../ui/pages/event/screen/event_homescreen.dart';

import '../../ui/pages/get_funding/screen/get_funding_homeScreen.dart';
import '../../ui/pages/get_funding/screen/preview_form.dart';
import '../../ui/pages/my_investment/cic_equity/model/cic_fixed_income/income/income.dart';
import '../../ui/pages/my_investment/cic_equity/screen/submitted_screen.dart';
import '../../ui/pages/my_investment/cic_equity/screen/ut_subscrip.dart';
import '../../ui/pages/my_investment/cic_income/screen/cic_fixed_income/screen/about_FIF_screen.dart';
import '../../ui/pages/my_investment/cic_income/screen/cic_fixed_income/screen/fix_income_fund.dart';
import '../../ui/pages/my_investment/cic_income/screen/confirm_screen.dart';
import '../../ui/pages/my_investment/cic_real_estate/screen/my_invest_screen.dart';
import '../../ui/pages/qr_code/qr_code.dart';
import '../../ui/pages/my_investment/cic_income/screen/cic_fixed_income/salary_saving/screen/salary_saving.dart';
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
          pageBuilder: (_, state) {
            return NoTransitionPage(
              child: HomeScreen(
                key: state.pageKey,
              ),
            );
          },
        ),
        GoRoute(
          // parentNavigatorKey: _rootNavigatorKey,
          path: '/qrcode',
          name: 'Qrcode',
          pageBuilder: (_, state) {
            return NoTransitionPage(
              child: QRCodeScreen(
                key: state.pageKey,
              ),
            );
          },
        ),
        GoRoute(
            path: '/myinvest',
            name: 'My Investment',
            builder: (_, state) {
              return MyInvest(
                key: state.pageKey,
              );
            },
            routes: [
              GoRoute(
                path: 'pincode',
                parentNavigatorKey: _shellNavigatorKey,
                name: 'Pin code Screen',
               
                builder: (_, state) {
                   final data = state.extra as ModelIncome;
                  return ScreenPinCode(
                    key: state.pageKey,
                    modelIncome: data,
                  );
                },
              ),
              GoRoute(
                path: 'fixedincome',
                parentNavigatorKey: _shellNavigatorKey,
                name: 'Fixed income fund',
                builder: (_, state) {
                  return FixedIncomeFund(
                    key: state.pageKey,
                  );
                },
              ),
              GoRoute(
                path: 'aboutfif',
                parentNavigatorKey: _shellNavigatorKey,
                name: 'aboutfif',
                builder: (_, state) {
                  return AboutFIFScreen(
                    key: state.pageKey,
                  );
                },
              ),
              GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: 'utscreen',
                  name: 'UT Subscribe',
                  builder: (_, state) {
                    return UTSubscribe(
                      key: state.pageKey,
                    );
                  },
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'submitted',
                      name: 'Submit',
                      builder: (_, state) {
                        return SubmitScreen(
                          key: state.pageKey,
                        );
                      },
                    )
                  ]),
              GoRoute(
                  path: 'salaryscreen',
                  parentNavigatorKey: _shellNavigatorKey,
                  name: 'Salary Screen',
                  builder: (_, state) {
                    final data = state.extra as ModelIncome;
                    return SalarySaving(
                      key: state.pageKey,
                      modelIncome: data,
                    );
                  },
                  routes: [
                    GoRoute(
                      path: 'detail',
                      parentNavigatorKey: _shellNavigatorKey,
                      name: 'Salary detail',
                      builder: (_, state) {
                        final data = state.extra as ModelIncome;
                        return DetailSummary(
                          key: state.pageKey,
                          modelIncome: data,
                        );
                      },
                    ),
                    GoRoute(
                      path: 'pending',
                      parentNavigatorKey: _shellNavigatorKey,
                      name: 'pending',
                      builder: (_, state) {
                        final data = state.extra as ModelIncome;
                        return PendingScreen(
                          key: state.pageKey,
                          modelIncome: data,
                        );
                      },
                    ),
                  ]),
            ]),

        GoRoute(
            path: '/event',
            name: 'event',
            pageBuilder: (_, state) {
              return NoTransitionPage(
                child: EventHomeScreen(
                  key: state.pageKey,
                ),
              );
            },
            routes: [
              GoRoute(
                path: 'eventdetail',
                name: 'Event Detail',
                builder: (context, state) {
                  return const EventDetail();
                },
              ),
              GoRoute(
                path: 'pasteventdetail',
                name: 'Past Event Detail',
                builder: (context, state) {
                  return const EventDetail();
                },
              ),
            ]),

        GoRoute(
          path: '/account',
          name: 'Account',
          pageBuilder: (_, state) {
            return NoTransitionPage(
              child: ProfileScreen(
                key: state.pageKey,
              ),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: '/addcompany',
          name: 'Add Company',
          builder: (_, state) {
            return AddCompany(
              key: state.pageKey,
            );
          },
        ),
        GoRoute(
            path: '/getfunding',
            name: 'getfunding',
            builder: (context, state) {
              return GetFundingHomeScreen(
                key: state.pageKey,
              );
            },
            routes: [
              GoRoute(
                path: 'preview',
                builder: (_, state) {
                  return PreviewForm(
                    key: state.pageKey,
                  );
                },
              ),
            ]),
      ],
    ),

    //

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
    GoRoute(
      path: '/update',
      name: 'Update',
      builder: (_, state) {
        return UpdateInfo(
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/previlege',
      name: 'previlege',
      builder: (_, state) {
        return PrivilageHomePage(
          key: state.pageKey,
        );
      },
      routes: [
        GoRoute(
          path: 'iso-second',
          builder: (_, state) {
            return IosSecondPage(
              key: state.pageKey,
            );
          },
          routes: [
            GoRoute(
              path: 'detail-iso-second',
              builder: (context, state) {
                // final id = int.parse(state.queryParams['id'].toString());
                return DetailShop(
                  key: state.pageKey,
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'iso-first',
          builder: (_, state) {
            return IosFirstPage(
              key: state.pageKey,
            );
          },
          routes: [
            GoRoute(
              path: 'detail-iso-first',
              builder: (context, state) {
                // final id = int.parse(state.queryParams['id'].toString());
                return DetailShop(
                  key: state.pageKey,
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'shop-detail',
          builder: (_, state) {
            return DetailShop(key: state.pageKey);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/user',
      name: 'user',
      builder: (_, state) {
        return UpdateUser(
          key: state.pageKey,
        );
      },
    ),
  ],
);
