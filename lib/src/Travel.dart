import '../cielo_ecommerce.dart';

part 'Travel.g.dart';

class Travel {
  String route;
  String departureTime;
  String journeyType;
  List<Legs> legs;

  Travel({this.route, this.departureTime, this.journeyType, this.legs});

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);

  Map<String, dynamic> toJson() => _$TravelToJson(this);
}
