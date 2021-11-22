// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
    serviceTaxAmount: json['ServiceTaxAmount'] as int?,
    installments: json['Installments'] as int?,
    interest: json['Interest'],
    capture: json['Capture'] as bool?,
    authenticate: json['Authenticate'] as bool?,
    recurrent: json['Recurrent'] as bool?,
    creditCard: json['CreditCard'] == null
        ? null
        : CreditCard.fromJson(json['CreditCard'] as Map<String, dynamic>),
    wallet: json['Wallet'] == null
        ? null
        : Wallet.fromJson(json['Wallet'] as Map<String, dynamic>),
    tid: json['Tid'] as String?,
    proofOfSale: json['ProofOfSale'] as String?,
    authorizationCode: json['AuthorizationCode'] as String?,
    softDescriptor: json['SoftDescriptor'] as String?,
    provider: json['Provider'] as String?,
    fraudAnalysis: json['FraudAnalysis'] == null
        ? null
        : FraudAnalysis.fromJson(json['FraudAnalysis'] as Map<String, dynamic>),
    isQrCode: json['IsQrCode'] as bool?,
    amount: json['Amount'] as int?,
    receivedDate: json['ReceivedDate'] as String?,
    status: json['Status'] as int?,
    isSplitted: json['IsSplitted'] as bool?,
    returnMessage: json['ReturnMessage'] as String?,
    returnCode: json['ReturnCode'] as String?,
    paymentId: json['PaymentId'] as String?,
    type: json['Type'] as String?,
    currency: json['Currency'] as String?,
    country: json['Country'] as String?,
    links: (json['Links'] as List<dynamic>?)
        ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
        .toList(),
    capturedDate: json['CapturedDate'] as String?,
    capturedAmount: json['CapturedAmount'] as int?,
    voidedDate: json['VoidedDate'] as String?,
    voidedAmount: json['VoidedAmount'] as int?,
    address: json['Address'] as String?,
    boletoNumber: json['BoletoNumber'] as String?,
    assignor: json['Assignor'] as String?,
    demonstrative: json['Demonstrative'] as String?,
    expirationDate: json['ExpirationDate'] as String?,
    identification: json['Identification'] as String?,
    instructions: json['Instructions'] as String?,
    url: json['Url'] as String?,
    digitableLine: json['DigitableLine'] as String?,
    barCodeNumber: json['BarCodeNumber'] as String?,
    bank: json['Bank'] as int?,
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$PaymentToJson(Payment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ServiceTaxAmount', instance.serviceTaxAmount);
  writeNotNull('Installments', instance.installments);
  writeNotNull('Interest', instance.interest);
  writeNotNull('Capture', instance.capture);
  writeNotNull('Authenticate', instance.authenticate);
  writeNotNull('Recurrent', instance.recurrent);
  writeNotNull('CreditCard', instance.creditCard);
  writeNotNull('Wallet', instance.wallet);
  writeNotNull('Tid', instance.tid);
  writeNotNull('ProofOfSale', instance.proofOfSale);
  writeNotNull('AuthorizationCode', instance.authorizationCode);
  writeNotNull('SoftDescriptor', instance.softDescriptor);
  writeNotNull('Provider', instance.provider);
  writeNotNull('FraudAnalysis', instance.fraudAnalysis);
  writeNotNull('IsQrCode', instance.isQrCode);
  writeNotNull('Amount', instance.amount);
  writeNotNull('ReceivedDate', instance.receivedDate);
  writeNotNull('Status', instance.status);
  writeNotNull('IsSplitted', instance.isSplitted);
  writeNotNull('ReturnMessage', instance.returnMessage);
  writeNotNull('ReturnCode', instance.returnCode);
  writeNotNull('PaymentId', instance.paymentId);
  writeNotNull('Type', instance.type);
  writeNotNull('Currency', instance.currency);
  writeNotNull('Country', instance.country);
  writeNotNull('Links', instance.links);
  writeNotNull('CapturedDate', instance.capturedDate);
  writeNotNull('CapturedAmount', instance.capturedAmount);
  writeNotNull('VoidedDate', instance.voidedDate);
  writeNotNull('VoidedAmount', instance.voidedAmount);
  writeNotNull('Address', instance.address);
  writeNotNull('BoletoNumber', instance.boletoNumber);
  writeNotNull('Assignor', instance.assignor);
  writeNotNull('Demonstrative', instance.demonstrative);
  writeNotNull('ExpirationDate', instance.expirationDate);
  writeNotNull('Identification', instance.identification);
  writeNotNull('Instructions', instance.instructions);
  writeNotNull('Url', instance.url);
  writeNotNull('BarCodeNumber', instance.barCodeNumber);
  writeNotNull('DigitableLine', instance.digitableLine);
  writeNotNull('Bank', instance.bank);
  return val;
}
