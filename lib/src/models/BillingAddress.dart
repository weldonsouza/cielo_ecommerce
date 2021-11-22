part 'BillingAddress.g.dart';

/// Classe BillingAddress da documentação oficial Cielo Ecommerce
class BillingAddress {
  String? street;
  String? number;
  String? complement;
  String? zipCode;
  String? city;
  String? state;
  String? country;
  String? district;

  BillingAddress(
      {this.street,
      this.number,
      this.complement,
      this.zipCode,
      this.city,
      this.state,
      this.country,
      this.district});

  factory BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$BillingAddressFromJson(json);

  Map<String, dynamic> toJson() => _$BillingAddressToJson(this);
}
