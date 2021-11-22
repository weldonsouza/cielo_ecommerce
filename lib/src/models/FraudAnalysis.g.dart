// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FraudAnalysis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
FraudAnalysis _$FraudAnalysisFromJson(Map<String, dynamic> json) {
  return FraudAnalysis(
    id: json['Id'] as String?,
    status: json['Status'] as int?,
    statusDescription: json['StatusDescription'] as String?,
    sequence: json['Sequence'] as String?,
    sequenceCriteria: json['SequenceCriteria'] as String?,
    totalOrderAmount: json['TotalOrderAmount'] as int?,
    transactionAmount: json['TransactionAmount'] as int?,
    fingerPrintId: json['FingerPrintId'] as String?,
    merchantDefinedFields: (json['MerchantDefinedFields'] as List<dynamic>?)
        ?.map((e) => MerchantDefinedFields.fromJson(e as Map<String, dynamic>))
        .toList(),
    cart: json['Cart'] == null
        ? null
        : Cart.fromJson(json['Cart'] as Map<String, dynamic>),
    travel: json['Travel'] == null
        ? null
        : Travel.fromJson(json['Travel'] as Map<String, dynamic>),
    browser: json['Browser'] == null
        ? null
        : Browser.fromJson(json['Browser'] as Map<String, dynamic>),
    shipping: json['Shipping'] == null
        ? null
        : Shipping.fromJson(json['Shipping'] as Map<String, dynamic>),
    captureOnLowRisk: json['CaptureOnLowRisk'] as bool?,
    voidOnHighRisk: json['VoidOnHighRisk'] as bool?,
    provider: json['Provider'] as String?,
    isRetryTransaction: json['IsRetryTransaction'] as bool?,
    fraudAnalysisReasonCode: json['FraudAnalysisReasonCode'],
    replyData: json['ReplyData'] == null
        ? null
        : ReplyData.fromJson(json['ReplyData'] as Map<String, dynamic>),
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$FraudAnalysisToJson(FraudAnalysis instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Id', instance.id);
  writeNotNull('Status', instance.status);
  writeNotNull('StatusDescription', instance.statusDescription);
  writeNotNull('Sequence', instance.sequence);
  writeNotNull('SequenceCriteria', instance.sequenceCriteria);
  writeNotNull('TotalOrderAmount', instance.totalOrderAmount);
  writeNotNull('TransactionAmount', instance.transactionAmount);
  writeNotNull('FingerPrintId', instance.fingerPrintId);
  writeNotNull('MerchantDefinedFields', instance.merchantDefinedFields);
  writeNotNull('Cart', instance.cart);
  writeNotNull('Travel', instance.travel);
  writeNotNull('Browser', instance.browser);
  writeNotNull('Shipping', instance.shipping);
  writeNotNull('CaptureOnLowRisk', instance.captureOnLowRisk);
  writeNotNull('VoidOnHighRisk', instance.voidOnHighRisk);
  writeNotNull('Provider', instance.provider);
  writeNotNull('IsRetryTransaction', instance.isRetryTransaction);
  writeNotNull('FraudAnalysisReasonCode', instance.fraudAnalysisReasonCode);
  writeNotNull('ReplyData', instance.replyData);
  return val;
}
