// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoneyModel _$$_MoneyModelFromJson(Map<String, dynamic> json) =>
    _$_MoneyModel(
      belong: json['belong'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      amount: json['amount'] as String?,
      note: json['note'] as String?,
      category: json['category'] as String?,
      create: json['create'] as String?,
    );

Map<String, dynamic> _$$_MoneyModelToJson(_$_MoneyModel instance) =>
    <String, dynamic>{
      'belong': instance.belong,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'amount': instance.amount,
      'note': instance.note,
      'category': instance.category,
      'create': instance.create,
    };
