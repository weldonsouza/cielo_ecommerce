part 'Address.g.dart';

class Address {
  String street;
  String number;
  String complement;
  String zipCode;
  String city;
  String state;
  String country;
  String district;

  Address(
      {this.street,
      this.number,
      this.complement,
      this.zipCode,
      this.city,
      this.state,
      this.country,
      this.district});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
