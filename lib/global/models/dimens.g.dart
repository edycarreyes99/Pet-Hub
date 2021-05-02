// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'dimens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dimens _$DimensFromJson(Map<String, dynamic> json) {
  return Dimens(
    imperial: json['imperial'] as String,
    metric: json['metric'] as String,
  );
}

Map<String, dynamic> _$DimensToJson(Dimens instance) => <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
