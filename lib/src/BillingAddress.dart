import 'package:json_annotation/json_annotation.dart';

part 'BillingAddress.g.dart';

@JsonSerializable(includeIfNull: false)
class BillingAddress {
  String street;
  String number;
  String complement;
  String zipCode;
  String city;
  String state;
  String country;
  String district;

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
