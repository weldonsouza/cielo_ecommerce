part 'Shipping.g.dart';

/// Classe Shipping da documentação oficial Cielo Ecommerce
class Shipping {
  String? addressee;
  String? phone;
  int? method;

  Shipping({this.addressee, this.phone, this.method});

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}
