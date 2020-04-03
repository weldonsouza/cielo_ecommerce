import 'package:json_annotation/json_annotation.dart';
import '../cieloecommerce.dart';

part 'Payment.g.dart';

@JsonSerializable(includeIfNull: false)
class Payment {
  int serviceTaxAmount;
  int installments;
  dynamic interest;
  bool capture;
  bool authenticate;
  bool recurrent;
  CreditCard creditCard;
  String tid;
  String proofOfSale;
  String authorizationCode;
  String softDescriptor;
  String provider;
  FraudAnalysis fraudAnalysis;
  bool isQrCode;
  int amount;
  String receivedDate;
  int status;
  bool isSplitted;
  String returnMessage;
  String returnCode;
  String paymentId;
  String type;
  String currency;
  String country;
  List<Link> links;
  String capturedDate;

  Payment(
      {this.serviceTaxAmount,
        this.installments,
        this.interest,
        this.capture,
        this.authenticate,
        this.recurrent,
        this.creditCard,
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
      });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

class TypePayment {
  static String get creditCard => 'CreditCard';
  static String get boleto => 'Boleto';
}