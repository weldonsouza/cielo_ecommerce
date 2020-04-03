import 'package:json_annotation/json_annotation.dart';

part 'Shipping.g.dart';

@JsonSerializable(includeIfNull: false)
class Shipping {
  String addressee;
  String phone;
  int method;

  Shipping({this.addressee, this.phone, this.method});

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}
