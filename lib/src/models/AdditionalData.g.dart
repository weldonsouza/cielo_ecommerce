// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdditionalData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
AdditionalData _$AdditionalDataFromJson(Map<String, dynamic> json) {
  return AdditionalData(
    signature: json['Signature'] as String?,
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$AdditionalDataToJson(AdditionalData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Signature', instance.signature);
  return val;
}
