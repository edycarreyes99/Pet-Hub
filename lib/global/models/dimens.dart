import 'package:json_annotation/json_annotation.dart';

part 'dimens.g.dart';

@JsonSerializable()
class Dimens {
  String imperial;
  String metric;

  Dimens({this.imperial, this.metric});

  factory Dimens.fromJson(Map<String, dynamic> json) => _$DimensFromJson(json);
  Map<String, dynamic> toJson() => _$DimensToJson(this);
}
