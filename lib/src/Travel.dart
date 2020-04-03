import 'package:json_annotation/json_annotation.dart';
import '../cielo_ecommerce.dart';

part 'Travel.g.dart';

@JsonSerializable(includeIfNull: false)
class Travel {
  String route;
  String departureTime;
  String journeyType;
  List<Legs> legs;

  Travel({this.route, this.departureTime, this.journeyType, this.legs});

  factory Travel.fromJson(Map<String, dynamic> json) =>
      _$TravelFromJson(json);
  Map<String, dynamic> toJson() => _$TravelToJson(this);
}