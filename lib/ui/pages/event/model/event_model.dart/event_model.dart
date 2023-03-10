// ignore_for_file: invalid_annotation_target, duplicate_ignore

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  factory EventModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "start_date") final String? startdate,
    @JsonKey(name: "event_by") final String? eventby,
    @JsonKey(name: "date") final String? date,
    @JsonKey(name: "cover") final String? cover,
    @JsonKey(name: "interested") final num? interested,
    @JsonKey(name: "register_number") final num? registernumber,
    @JsonKey(name: "place") final String? place,
    @JsonKey(name: "location") final String? location,
    @JsonKey(name: "latitude") final String? latitude,
    @JsonKey(name: "longitude") final String? longitude,
    @JsonKey(name: "register_profile") final List? registerprofile,
    @JsonKey(name: "is_interested") final bool? isinterested,
    @JsonKey(name: "from_time") final String? fromtime,
    @JsonKey(name: "to_time") final String? totime,
    @JsonKey(name: "is_uninterested") final bool? isuninterested,
    @JsonKey(name: "contact_organiser") final String? contactorganiser,
    @JsonKey(name: "is_checked_in") final bool? ischeckedin,
    @JsonKey(name: "is_register") final bool? isregister,
    @JsonKey(name: "is_open") final bool? isopen,
    @JsonKey(name: "posted") final String? posted,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
