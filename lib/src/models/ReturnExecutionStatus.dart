import 'models.dart';

part 'ReturnExecutionStatus.g.dart';

/// Classe Return Execution Status da documentação oficial Cielo Ecommerce
class ReturnExecutionStatus {
  int? status;
  int? reasonCode;
  String? reasonMessage;
  String? providerReturnCode;
  String? providerReturnMessage;
  String? returnCode;
  String? returnMessage;
  String? tid;
  String? proofOfSale;
  String? authorizationCode;
  List<Link>? links;

  ReturnExecutionStatus(
      {this.status,
      this.reasonCode,
      this.reasonMessage,
      this.providerReturnCode,
      this.providerReturnMessage,
      this.returnCode,
      this.returnMessage,
      this.tid,
      this.proofOfSale,
      this.authorizationCode,
      this.links});

  factory ReturnExecutionStatus.fromJson(Map<String, dynamic> json) =>
      _$ReturnExecutionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnExecutionStatusToJson(this);
}
