// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    name: json['Name'] as String?,
    identity: json['Identity'] as String?,
    identityType: json['IdentityType'] as String?,
    email: json['Email'] as String?,
    birthdate: json['Birthdate'] as String?,
    address: json['Address'] == null
        ? null
        : Address.fromJson(json['Address'] as Map<String, dynamic>),
    deliveryAddress: json['DeliveryAddress'] == null
        ? null
        : DeliveryAddress.fromJson(
            json['DeliveryAddress'] as Map<String, dynamic>),
    billingAddress: json['BillingAddress'] == null
        ? null
        : BillingAddress.fromJson(
            json['BillingAddress'] as Map<String, dynamic>),
    phone: json['Phone'] as String?,
    mobile: json['Mobile'] as String?,
  );
}

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  writeNotNull('Identity', instance.identity);
  writeNotNull('IdentityType', instance.identityType);
  writeNotNull('Email', instance.email);
  writeNotNull('Birthdate', instance.birthdate);
  writeNotNull('Address', instance.address);
  writeNotNull('DeliveryAddress', instance.deliveryAddress);
  writeNotNull('BillingAddress', instance.billingAddress);
  writeNotNull('Phone', instance.phone);
  writeNotNull('Mobile', instance.mobile);
  return val;
}
