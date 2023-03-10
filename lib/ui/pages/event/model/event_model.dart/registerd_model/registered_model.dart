import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_model.freezed.dart';
part 'registered_model.g.dart';

@freezed
class ModelRegistered with _$ModelRegistered {
  factory ModelRegistered({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "event") final String? events,
    @JsonKey(name: "event_by") final String? eventby,
    @JsonKey(name: "is_cic_member") final bool? iscicmember,
    @JsonKey(name: "participant_name") final String? participantname,
    @JsonKey(name: "company_name") final String? companyName,
    @JsonKey(name: "position") final String? position,
    @JsonKey(name: "phone_number") final String? phonenumber,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "check_in_date") final String? checkindate,
    @JsonKey(name: "check_in") final bool? checkin,
    @JsonKey(name: "profile") final String? profile,
    @JsonKey(name: "name") final String? name,
    @Default(false) final bool? isTap,
  }) = _ModelRegistered;

  factory ModelRegistered.fromJson(Map<String, dynamic> json) =>
      _$ModelRegisteredFromJson(json);
}
