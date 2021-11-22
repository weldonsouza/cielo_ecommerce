import 'models.dart';

part 'FraudAnalysis.g.dart';

/// Classe Fraud Analysis da documentação oficial Cielo Ecommerce
class FraudAnalysis {
  String? id;
  int? status;
  String? statusDescription;
  String? sequence;
  String? sequenceCriteria;
  int? totalOrderAmount;
  int? transactionAmount;
  String? fingerPrintId;
  List<MerchantDefinedFields>? merchantDefinedFields;
  Cart? cart;
  Travel? travel;
  Browser? browser;
  Shipping? shipping;
  bool? captureOnLowRisk;
  bool? voidOnHighRisk;
  String? provider;
  bool? isRetryTransaction;
  dynamic fraudAnalysisReasonCode;
  ReplyData? replyData;

  FraudAnalysis(
      {this.id,
      this.status,
      this.statusDescription,
      this.sequence,
      this.sequenceCriteria,
      this.totalOrderAmount,
      this.transactionAmount,
      this.fingerPrintId,
      this.merchantDefinedFields,
      this.cart,
      this.travel,
      this.browser,
      this.shipping,
      this.captureOnLowRisk,
      this.voidOnHighRisk,
      this.provider,
      this.isRetryTransaction,
      this.fraudAnalysisReasonCode,
      this.replyData});

  factory FraudAnalysis.fromJson(Map<String, dynamic> json) =>
      _$FraudAnalysisFromJson(json);

  Map<String, dynamic> toJson() => _$FraudAnalysisToJson(this);
}
