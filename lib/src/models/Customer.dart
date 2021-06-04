import 'models.dart';

part 'Customer.g.dart';

class Customer {
  String? name;
  String? identity;
  String? identityType;
  String? email;
  String? birthdate;
  Address? address;
  DeliveryAddress? deliveryAddress;
  BillingAddress? billingAddress;
  String? phone;
  String? mobile;

  Customer(
      {this.name,
      this.identity,
      this.identityType,
      this.email,
      this.birthdate,
      this.address,
      this.deliveryAddress,
      this.billingAddress,
      this.phone,
      this.mobile});

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
