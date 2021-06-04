// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shipping _$ShippingFromJson(Map<String, dynamic> json) {
  return Shipping(
    addressee: json['Addressee'] as String?,
    phone: json['Phone'] as String?,
    method: json['Method'] as int?,
  );
}

Map<String, dynamic> _$ShippingToJson(Shipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Addressee', instance.addressee);
  writeNotNull('Phone', instance.phone);
  writeNotNull('Method', instance.method);
  return val;
}
