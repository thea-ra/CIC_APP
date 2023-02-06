// import 'package:flutter/cupertino.dart';

// class TestTabBar extends StatefulWidget {
//   final String? title;
//   const TestTabBar({super.key, this.title});

//   @override
//   State<TestTabBar> createState() => _TestTabBarState();
// }

// class _TestTabBarState extends State<TestTabBar> {
//   int _selectedIndexValue = 0;
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Expanded(
//               child: ListView(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 children: <Widget>[
//                   CupertinoSlidingSegmentedControl(
//                     groupValue: _selectedIndexValue,
//                     children: {
//                       0: Container(
//                         margin: const EdgeInsets.all(4),
//                         child: const Text('Home'),
//                       ),
//                       1: Container(
//                         margin: const EdgeInsets.all(4),
//                         child: const Text('Bar'),
//                       ),
//                     },
//                     onValueChanged: (value) {
//                       setState(() {
//                         _selectedIndexValue = int.parse(value.toString());
//                       });
//                     },
//                   ),
//                   _selectedIndexValue == 0
//                       ? const IosFirstPage()
//                       : const IosSecondPage(),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class IosFirstPage extends StatelessWidget {
//   const IosFirstPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("Ios 1 Page"),
//     );
//   }
// }

// class IosSecondPage extends StatelessWidget {
//   const IosSecondPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: 550,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         itemCount: 40,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(20),
//             child: Text("IOS $index"),
//           );
//         },
//       ),
//     );
//   }
// }

// class ThjirdPage extends StatelessWidget {
//   const ThjirdPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       height: 550,
//       child: ListView.builder(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         itemCount: 40,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(20),
//             child: Text("IOS $index"),
//           );
//         },
//       ),
//     );
//   }
// }
