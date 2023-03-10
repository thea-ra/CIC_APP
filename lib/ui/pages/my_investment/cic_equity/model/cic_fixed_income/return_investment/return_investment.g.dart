// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_investment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReturnModel _$$_ReturnModelFromJson(Map<String, dynamic> json) =>
    _$_ReturnModel(
      year: json['year'] as num?,
      info: json['info'] == null
          ? null
          : InfoModel.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReturnModelToJson(_$_ReturnModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'info': instance.info,
    };
