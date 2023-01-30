import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_nodata.freezed.dart';
part 'case_nodata.g.dart';

@freezed
class ControllerHomeModel with _$ControllerHomeModel {

  factory ControllerHomeModel({
     String ?svg,
     String? text

  }) = _ControllerHomeModel;

  factory ControllerHomeModel.fromJson(Map<String, dynamic> json) => _$ControllerHomeModelFromJson(json);
}