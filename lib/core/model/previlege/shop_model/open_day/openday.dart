import 'package:freezed_annotation/freezed_annotation.dart';

part 'openday.freezed.dart';
part 'openday.g.dart';

@freezed
class OpendayModel with _$OpendayModel {
  factory OpendayModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "day_name") final String? dayName,
    // ignore: invalid_annotation_target
    @JsonKey(name: "shift_a_hours") final String? shiftAHours,
    // ignore: invalid_annotation_target
    @JsonKey(name: "shift_b_hours") final String? shiftBHours,
  }) = _OpendayModel;
  factory OpendayModel.fromJson(Map<String, dynamic> json) =>
      _$OpendayModelFromJson(json);
}
