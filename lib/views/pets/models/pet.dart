import 'package:json_annotation/json_annotation.dart';
import 'package:pet_hub/views/breeds/models/breed.dart';

part 'pet.g.dart';

@JsonSerializable()
class Pet {
  List<Breed> breeds;
  int height;
  String id;
  String url;
  int width;

  Pet({this.breeds, this.height, this.id, this.url, this.width});

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);
  Map<String, dynamic> toJson() => _$PetToJson(this);
}
