// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
    breeds: (json['breeds'] as List)
        ?.map(
            (e) => e == null ? null : Breed.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    height: json['height'] as int,
    id: json['id'] as String,
    url: json['url'] as String,
    width: json['width'] as int,
  );
}

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'breeds': instance.breeds,
      'height': instance.height,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
    };
