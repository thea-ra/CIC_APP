// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SliderImageModel _$$_SliderImageModelFromJson(Map<String, dynamic> json) =>
    _$_SliderImageModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      module: json['module'] as String?,
      shopId: json['shop_id'] as int?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      destination: json['destination'] as String?,
      urlTarget: json['url_target'] as String?,
      image: json['image'] as String?,
      button: json['button'] as String?,
    );

Map<String, dynamic> _$$_SliderImageModelToJson(_$_SliderImageModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'module': instance.module,
      'shop_id': instance.shopId,
      'type': instance.type,
      'status': instance.status,
      'destination': instance.destination,
      'url_target': instance.urlTarget,
      'image': instance.image,
      'button': instance.button,
    };
