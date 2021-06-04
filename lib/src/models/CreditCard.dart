part 'CreditCard.g.dart';

class CreditCard {
  String? cardNumber;
  String? holder;
  String? expirationDate;
  dynamic saveCard;
  String? securityCode;
  String? brand;
  String? customerName;
  String? cardToken;

  CreditCard({
    this.cardNumber,
    this.holder,
    this.expirationDate,
    this.saveCard,
    this.securityCode,
    this.brand,
    this.cardToken,
    this.customerName,
  });

  factory CreditCard.token(
      {String? cardToken, String? securityCode, String? brand}) {
    return CreditCard(
        cardToken: cardToken, securityCode: securityCode, brand: brand);
  }

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardToJson(this);
}
