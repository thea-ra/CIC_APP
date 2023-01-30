import 'dart:io';

import 'package:cic_project/ui/pages/qr_code/controller/qrcode_controller.dart';
import 'package:cic_project/ui/share/component/qrcode_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({super.key});

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  final con = Get.put(QRCodeController());
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      con.controller!.pauseCamera();
    } else if (Platform.isIOS) {
      con.controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 300.0
        : 300.0;
    return Scaffold(
      backgroundColor: const Color(0xff848F92),
      body: Obx(
        () => con.isCheck.value
            ? Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            'asset/svg/close.svg',
                            color: const Color(0xffFFFFFF),
                          ),
                        ),
                        SvgPicture.asset(
                          'asset/svg/flash.svg',
                          width: 20,
                          height: 20,
                          color: const Color(0xffFFFFFF),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: QRView(
                        key: qrKey,
                        overlay: QrScannerOverlayShape(
                            overlayColor: const Color(0xff848F92),
                            borderColor: const Color(0xffF2F2F2),
                            borderRadius: 10,
                            borderLength: 30,
                            borderWidth: 10,
                            cutOutSize: scanArea),
                        onQRViewCreated: con.onQRViewCreated,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff3C2A21)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 8, bottom: 8),
                        child: Row(children: [
                          SvgPicture.asset('asset/svg/Qrcode.svg'),
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  isDismissible: false,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(14.0),
                                    ),
                                  ),
                                  builder: (context) {
                                    return const QRcodeComponent();
                                  },
                                );
                              },
                              child: const Text(
                                'My Qr Code',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'DMSans'),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Container(
                          color: const Color(0xffFFFFFF),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(
                                child: Column(
                              children: const [
                                Text('Scanning will start automatically',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'DMSans',
                                        color: Color(0xff0A0B09),
                                        fontWeight: FontWeight.w600)),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Text(
                                    'Scan QR to Register Event,',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        color: Color(0xff0A0B09),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Text(
                                    'Scanning QR to view other CiC Member profile',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'DMSans',
                                        color: Color(0xff0A0B09),
                                        fontWeight: FontWeight.w400)),
                              ],
                            )),
                          ),
                        ),
                      )),
                ],
              )
            : const Text('Data'),
      ),
    );
  }
  // void _onQRViewCreated(QRViewController controller) {
  //   this.controller = controller;
  //   controller.scannedDataStream.listen((scanData) {
  //     setState(() {
  //       result = scanData;
  //     });
  //   });
  // }

  @override
  void dispose() {
    con.controller?.dispose();
    super.dispose();
  }
}
