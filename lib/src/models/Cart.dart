import 'models.dart';

part 'Cart.g.dart';

/// Classe Cart da documentação oficial Cielo Ecommerce
class Cart {
  bool? isGift;
  bool? returnsAccepted;
  List<Items>? items;

  Cart({this.isGift, this.returnsAccepted, this.items});

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
