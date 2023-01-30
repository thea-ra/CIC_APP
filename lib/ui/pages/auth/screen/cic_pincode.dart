// import 'dart:ui';

// import 'package:flutter/material.dart';


// class CicPIN extends StatelessWidget {
//   const CicPIN({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: const Color(0xffDEE8F3),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(color: Color(0xffDEE8F3)),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 52, left: 133, right: 132),
//               child: Stack(
//                 children: [
//                   Image.asset('asset/image/cic.png'),
//                   BackdropFilter(
//                     filter: ImageFilter.blur(sigmaX: 30, sigmaY: 28),
//                     child: Container(
//                         decoration: BoxDecoration(
//                       color: Colors.grey.shade100.withOpacity(0.2),
//                     )),
//                   ),
//                   Image.asset('asset/image/cic.png'),
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(
//                 top: 20,
//               ),
//               child: Text(
//                 'Set PIN Code',
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontFamily: 'DM Sans',
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xff0F50A4)),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 8),
//               child: Text(
//                 'Create a 4-digit PIN',
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xff464646)),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 58, top: 80, right: 57),
//               child: Center(
//                 child: OTPTextField(
//                   length: 4,
//                   width: MediaQuery.of(context).size.width,
//                   textFieldAlignment: MainAxisAlignment.spaceAround,
//                   fieldWidth: 45,
//                   fieldStyle: FieldStyle.underline,
//                   style: const TextStyle(fontSize: 17),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 108, left: 20, right: 20),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => const CicPIN()));
//                 },
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: const Color(0xff0F50A4),
//                       border: Border.all(color: Colors.white)),
//                   child: const Padding(
//                     padding: EdgeInsets.only(top: 14, bottom: 14),
//                     child: Center(
//                         child: Text(
//                       'Save',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white,
//                           fontFamily: 'DM Sans'),
//                     )),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
