import 'models.dart';

part 'Payment.g.dart';

/// Classe Payment da documentação oficial Cielo Ecommerce
class Payment {
  int? serviceTaxAmount;
  int? installments;
  dynamic interest;
  bool? capture;
  bool? authenticate;
  bool? recurrent;
  CreditCard? creditCard;
  Wallet? wallet;
  String? tid;
  String? proofOfSale;
  String? authorizationCode;
  String? softDescriptor;
  String? provider;
  FraudAnalysis? fraudAnalysis;
  bool? isQrCode;
  int? amount;
  String? receivedDate;
  int? status;
  bool? isSplitted;
  String? returnMessage;
  String? returnCode;
  String? paymentId;
  String? type;
  String? currency;
  String? country;
  List<Link>? links;
  String? capturedDate;
  int? capturedAmount;
  String? voidedDate;
  int? voidedAmount;
  String? address;
  String? boletoNumber;
  String? assignor;
  String? demonstrative;
  String? expirationDate;
  String? identification;
  String? instructions;
  String? url;
  String? barCodeNumber;
  String? digitableLine;
  int? bank;

  Payment(
      {this.serviceTaxAmount,
      this.installments,
      this.interest,
      this.capture,
      this.authenticate,
      this.recurrent,
      this.creditCard,
      this.wallet,
      this.tid,
      this.proofOfSale,
      this.authorizationCode,
      this.softDescriptor,
      this.provider,
      this.fraudAnalysis,
      this.isQrCode,
      this.amount,
      this.receivedDate,
      this.status,
      this.isSplitted,
      this.returnMessage,
      this.returnCode,
      this.paymentId,
      this.type,
      this.currency,
      this.country,
      this.links,
      this.capturedDate,
      this.capturedAmount,
      this.voidedDate,
      this.voidedAmount,
      this.address,
      this.boletoNumber,
      this.assignor,
      this.demonstrative,
      this.expirationDate,
      this.identification,
      this.instructions,
      this.url,
      this.digitableLine,
      this.barCodeNumber,
      this.bank});

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

class TypePayment {
  static String get creditCard => 'CreditCard';

  static String get boleto => 'Boleto';

  static String get androidPay => 'AndroidPay';
}
