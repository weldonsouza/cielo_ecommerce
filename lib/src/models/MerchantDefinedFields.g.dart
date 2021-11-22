// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MerchantDefinedFields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
MerchantDefinedFields _$MerchantDefinedFieldsFromJson(
    Map<String, dynamic> json) {
  return MerchantDefinedFields(
    id: json['Id'],
    value: json['Value'] as String?,
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$MerchantDefinedFieldsToJson(
    MerchantDefinedFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Id', instance.id);
  writeNotNull('Value', instance.value);
  return val;
}
