import 'package:json_annotation/json_annotation.dart';

part 'DeliveryAddress.g.dart';

@JsonSerializable(includeIfNull: false)
class DeliveryAddress {
  String street;
  String number;
  String complement;
  String zipCode;
  String city;
  String state;
  String country;
  String district;

  DeliveryAddress(
      {this.street,
      this.number,
      this.complement,
      this.zipCode,
      this.city,
      this.state,
      this.country,
      this.district});

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryAddressToJson(this);
}
