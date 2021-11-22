part 'ReplyData.g.dart';

/// Classe Reply Data da documentação oficial Cielo Ecommerce
class ReplyData {
  String? addressInfoCode;
  String? factorCode;
  int? score;
  String? binCountry;
  String? cardIssuer;
  String? cardScheme;
  int? hostSeverity;
  String? internetInfoCode;
  String? ipRoutingMethod;
  String? scoreModelUsed;
  int? casePriority;
  String? providerTransactionId;
  String? velocityInfoCode;

  ReplyData(
      {this.addressInfoCode,
      this.factorCode,
      this.score,
      this.binCountry,
      this.cardIssuer,
      this.cardScheme,
      this.hostSeverity,
      this.internetInfoCode,
      this.ipRoutingMethod,
      this.scoreModelUsed,
      this.casePriority,
      this.providerTransactionId,
      this.velocityInfoCode});

  factory ReplyData.fromJson(Map<String, dynamic> json) =>
      _$ReplyDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReplyDataToJson(this);
}
