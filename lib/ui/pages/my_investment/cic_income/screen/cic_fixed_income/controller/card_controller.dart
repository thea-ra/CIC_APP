import 'package:cic_project/ui/pages/my_investment/cic_income/screen/cic_fixed_income/model/card_model.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  final selected = ''.obs;
  final isClick = false.obs;
  final isSelcted = false.obs;
  final isTap = false.obs;
  final salaryList = [
    Card(text: 'Edit', svgpci: 'asset/svg/edits.svg'),
    Card(text: 'Cancel Application', svgpci: 'asset/svg/history.svg'),
  ];
}
