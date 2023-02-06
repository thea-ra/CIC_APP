// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as int?,
      countShop: json['count_shop'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      mimeType: json['mime_type'] as String?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count_shop': instance.countShop,
      'name': instance.name,
      'image': instance.image,
      'mime_type': instance.mimeType,
    };
