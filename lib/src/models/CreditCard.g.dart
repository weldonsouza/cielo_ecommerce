// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreditCard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCard _$CreditCardFromJson(Map<String, dynamic> json) {
  return CreditCard(
    cardNumber: json['CardNumber'] as String?,
    holder: json['Holder'] as String?,
    expirationDate: json['ExpirationDate'] as String?,
    saveCard: json['SaveCard'],
    securityCode: json['SecurityCode'] as String?,
    brand: json['Brand'] as String?,
    cardToken: json['CardToken'] as String?,
    customerName: json['CustomerName'] as String?,
  );
}

Map<String, dynamic> _$CreditCardToJson(CreditCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CardNumber', instance.cardNumber);
  writeNotNull('Holder', instance.holder);
  writeNotNull('ExpirationDate', instance.expirationDate);
  writeNotNull('SaveCard', instance.saveCard);
  writeNotNull('SecurityCode', instance.securityCode);
  writeNotNull('Brand', instance.brand);
  writeNotNull('CustomerName', instance.customerName);
  writeNotNull('CardToken', instance.cardToken);
  return val;
}
