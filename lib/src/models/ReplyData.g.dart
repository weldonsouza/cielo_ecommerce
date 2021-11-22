// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ReplyData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
ReplyData _$ReplyDataFromJson(Map<String, dynamic> json) {
  return ReplyData(
    addressInfoCode: json['AddressInfoCode'] as String?,
    factorCode: json['FactorCode'] as String?,
    score: json['Score'] as int?,
    binCountry: json['BinCountry'] as String?,
    cardIssuer: json['CardIssuer'] as String?,
    cardScheme: json['CardScheme'] as String?,
    hostSeverity: json['HostSeverity'] as int?,
    internetInfoCode: json['InternetInfoCode'] as String?,
    ipRoutingMethod: json['IpRoutingMethod'] as String?,
    scoreModelUsed: json['ScoreModelUsed'] as String?,
    casePriority: json['CasePriority'] as int?,
    providerTransactionId: json['ProviderTransactionId'] as String?,
    velocityInfoCode: json['VelocityInfoCode'] as String?,
  );
}

Map<String, dynamic> _$ReplyDataToJson(ReplyData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AddressInfoCode', instance.addressInfoCode);
  writeNotNull('FactorCode', instance.factorCode);
  writeNotNull('Score', instance.score);
  writeNotNull('BinCountry', instance.binCountry);
  writeNotNull('CardIssuer', instance.cardIssuer);
  writeNotNull('CardScheme', instance.cardScheme);
  writeNotNull('HostSeverity', instance.hostSeverity);
  writeNotNull('InternetInfoCode', instance.internetInfoCode);
  writeNotNull('IpRoutingMethod', instance.ipRoutingMethod);
  writeNotNull('ScoreModelUsed', instance.scoreModelUsed);
  writeNotNull('CasePriority', instance.casePriority);
  writeNotNull('ProviderTransactionId', instance.providerTransactionId);
  writeNotNull('VelocityInfoCode', instance.velocityInfoCode);
  return val;
}
