import 'models.dart';

part 'Travel.g.dart';

/// Classe Travel da documentação oficial Cielo Ecommerce
class Travel {
  String? route;
  String? departureTime;
  String? journeyType;
  List<Legs>? legs;

  Travel({this.route, this.departureTime, this.journeyType, this.legs});

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);

  Map<String, dynamic> toJson() => _$TravelToJson(this);
}
