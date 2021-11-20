// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return Wallet(
    type: json['Type'] as String?,
    walletKey: json['WalletKey'] as String?,
    additionalData: json['AdditionalData'] == null
        ? null
        : AdditionalData.fromJson(json['AdditionalData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WalletToJson(Wallet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Type', instance.type);
  writeNotNull('WalletKey', instance.walletKey);
  writeNotNull('AdditionalData', instance.additionalData);
  return val;
}
