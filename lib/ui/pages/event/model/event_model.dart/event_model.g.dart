// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      startdate: json['start_date'] as String?,
      eventby: json['event_by'] as String?,
      date: json['date'] as String?,
      cover: json['cover'] as String?,
      interested: json['interested'] as num?,
      registernumber: json['register_number'] as num?,
      place: json['place'] as String?,
      location: json['location'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      registerprofile: json['register_profile'] as List<dynamic>?,
      isinterested: json['is_interested'] as bool?,
      fromtime: json['from_time'] as String?,
      totime: json['to_time'] as String?,
      isuninterested: json['is_uninterested'] as bool?,
      contactorganiser: json['contact_organiser'] as String?,
      ischeckedin: json['is_checked_in'] as bool?,
      isregister: json['is_register'] as bool?,
      isopen: json['is_open'] as bool?,
      posted: json['posted'] as String?,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'start_date': instance.startdate,
      'event_by': instance.eventby,
      'date': instance.date,
      'cover': instance.cover,
      'interested': instance.interested,
      'register_number': instance.registernumber,
      'place': instance.place,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'register_profile': instance.registerprofile,
      'is_interested': instance.isinterested,
      'from_time': instance.fromtime,
      'to_time': instance.totime,
      'is_uninterested': instance.isuninterested,
      'contact_organiser': instance.contactorganiser,
      'is_checked_in': instance.ischeckedin,
      'is_register': instance.isregister,
      'is_open': instance.isopen,
      'posted': instance.posted,
    };
