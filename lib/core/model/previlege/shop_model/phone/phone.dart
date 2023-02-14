import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.freezed.dart';
part 'phone.g.dart';

@freezed
class PhoneModel with _$PhoneModel {
  factory PhoneModel({
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "mobile") final String? mobile,
  }) = _PhoneModel;
  factory PhoneModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneModelFromJson(json);
}
