// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelRegistered _$$_ModelRegisteredFromJson(Map<String, dynamic> json) =>
    _$_ModelRegistered(
      id: json['id'] as int?,
      events: json['event'] as String?,
      eventby: json['event_by'] as String?,
      iscicmember: json['is_cic_member'] as bool?,
      participantname: json['participant_name'] as String?,
      companyName: json['company_name'] as String?,
      position: json['position'] as String?,
      phonenumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      checkindate: json['check_in_date'] as String?,
      checkin: json['check_in'] as bool?,
      profile: json['profile'] as String?,
      name: json['name'] as String?,
      isTap: json['isTap'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ModelRegisteredToJson(_$_ModelRegistered instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event': instance.events,
      'event_by': instance.eventby,
      'is_cic_member': instance.iscicmember,
      'participant_name': instance.participantname,
      'company_name': instance.companyName,
      'position': instance.position,
      'phone_number': instance.phonenumber,
      'email': instance.email,
      'image': instance.image,
      'check_in_date': instance.checkindate,
      'check_in': instance.checkin,
      'profile': instance.profile,
      'name': instance.name,
      'isTap': instance.isTap,
    };
