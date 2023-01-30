import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeController extends GetxController {
  final result = ''.obs;
  final isCheck =true.obs;
    QRViewController? controller;
    void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      result.value = scanData.toString();
    });
  }
}
