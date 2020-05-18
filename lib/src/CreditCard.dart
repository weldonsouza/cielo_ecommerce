part 'CreditCard.g.dart';

class CreditCard {
  String cardNumber;
  String holder;
  String expirationDate;
  dynamic saveCard;
  String securityCode;
  String brand;

  CreditCard(
      {this.cardNumber,
      this.holder,
      this.expirationDate,
      this.saveCard,
      this.securityCode,
      this.brand});

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardToJson(this);
}
