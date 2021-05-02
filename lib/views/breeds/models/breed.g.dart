// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Breed _$BreedFromJson(Map<String, dynamic> json) {
  return Breed(
    bredFor: json['bred_for'] as String,
    breedGroup: json['breed_group'] as String,
    height: json['height'] == null
        ? null
        : Dimens.fromJson(json['height'] as Map<String, dynamic>),
    id: json['id'] as int,
    lifeSpan: json['life_span'] as String,
    name: json['name'] as String,
    origin: json['origin'] as String,
    referenceImageId: json['reference_image_id'] as String,
    temperament: json['temperament'] as String,
    weight: json['weight'] == null
        ? null
        : Dimens.fromJson(json['weight'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BreedToJson(Breed instance) => <String, dynamic>{
      'bred_for': instance.bredFor,
      'breed_group': instance.breedGroup,
      'height': instance.height,
      'id': instance.id,
      'life_span': instance.lifeSpan,
      'name': instance.name,
      'origin': instance.origin,
      'reference_image_id': instance.referenceImageId,
      'temperament': instance.temperament,
      'weight': instance.weight,
    };
