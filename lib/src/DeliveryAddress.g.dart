// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DeliveryAddress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryAddress _$DeliveryAddressFromJson(Map<String, dynamic> json) {
  return DeliveryAddress(
    street: json['Street'] as String,
    number: json['Number'] as String,
    complement: json['Complement'] as String,
    zipCode: json['ZipCode'] as String,
    city: json['City'] as String,
    state: json['State'] as String,
    country: json['Country'] as String,
    district: json['District'] as String,
  );
}

Map<String, dynamic> _$DeliveryAddressToJson(DeliveryAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Street', instance.street);
  writeNotNull('Number', instance.number);
  writeNotNull('Complement', instance.complement);
  writeNotNull('ZipCode', instance.zipCode);
  writeNotNull('City', instance.city);
  writeNotNull('State', instance.state);
  writeNotNull('Country', instance.country);
  writeNotNull('District', instance.district);
  return val;
}
