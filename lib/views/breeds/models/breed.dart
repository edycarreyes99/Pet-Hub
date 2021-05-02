import 'package:json_annotation/json_annotation.dart';
import 'package:pet_hub/global/models/dimens.dart';

part 'breed.g.dart';

@JsonSerializable()
class Breed {
  @JsonKey(name: 'bred_for')
  String bredFor;

  @JsonKey(name: 'breed_group')
  String breedGroup;
  Dimens height;
  int id;

  @JsonKey(name: 'life_span')
  String lifeSpan;
  String name;
  String origin;

  @JsonKey(name: 'reference_image_id')
  String referenceImageId;
  String temperament;
  Dimens weight;

  Breed(
      {this.bredFor,
      this.breedGroup,
      this.height,
      this.id,
      this.lifeSpan,
      this.name,
      this.origin,
      this.referenceImageId,
      this.temperament,
      this.weight});

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
  Map<String, dynamic> toJson() => _$BreedToJson(this);
}
