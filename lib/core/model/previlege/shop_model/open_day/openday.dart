import 'package:freezed_annotation/freezed_annotation.dart';

part 'openday.freezed.dart';
part 'openday.g.dart';

@freezed
class OpendayModel with _$OpendayModel {
  factory OpendayModel({
    @JsonKey(name: "day_name") final String? dayName,
    @JsonKey(name: "shift_a_hours") final String? shiftAHours,
    @JsonKey(name: "shift_b_hours") final String? shiftBHours,
  }) = _OpendayModel;
  factory OpendayModel.fromJson(Map<String, dynamic> json) =>
      _$OpendayModelFromJson(json);
}
