// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
Sale _$SaleFromJson(Map<String, dynamic> json) {
  return Sale(
    merchantOrderId: json['MerchantOrderId'] as String?,
    customer: json['Customer'] == null
        ? null
        : Customer.fromJson(json['Customer'] as Map<String, dynamic>),
    payment: json['Payment'] == null
        ? null
        : Payment.fromJson(json['Payment'] as Map<String, dynamic>),
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$SaleToJson(Sale instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('MerchantOrderId', instance.merchantOrderId);
  writeNotNull('Customer', instance.customer);
  writeNotNull('Payment', instance.payment);
  return val;
}
