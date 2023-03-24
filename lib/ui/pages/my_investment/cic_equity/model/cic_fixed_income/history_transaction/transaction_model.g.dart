// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelTransaction _$$_ModelTransactionFromJson(Map<String, dynamic> json) =>
    _$_ModelTransaction(
      date: json['date'] as String?,
      history: (json['histories'] as List<dynamic>?)
          ?.map((e) => ModelHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelTransactionToJson(_$_ModelTransaction instance) =>
    <String, dynamic>{
      'date': instance.date,
      'histories': instance.history,
    };
