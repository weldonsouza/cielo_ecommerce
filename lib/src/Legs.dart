import 'package:json_annotation/json_annotation.dart';

part 'Legs.g.dart';

@JsonSerializable(includeIfNull: false)
class Legs {
  String destination;
  String origin;

  Legs({this.destination, this.origin});

  factory Legs.fromJson(Map<String, dynamic> json) => _$LegsFromJson(json);

  Map<String, dynamic> toJson() => _$LegsToJson(this);
}
