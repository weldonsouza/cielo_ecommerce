// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdditionalData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalData _$AdditionalDataFromJson(Map<String, dynamic> json) {
  return AdditionalData(
    signature: json['Signature'] as String?,
  );
}

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
