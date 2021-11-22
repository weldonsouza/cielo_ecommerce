import 'models.dart';

part 'Items.g.dart';

/// Classe Items da documentação oficial Cielo Ecommerce
class Items {
  dynamic giftCategory;
  dynamic hostHedge;
  dynamic nonSensicalHedge;
  dynamic obscenitiesHedge;
  dynamic phoneHedge;
  String? name;
  int? quantity;
  String? sku;
  int? unitPrice;
  dynamic risk;
  dynamic timeHedge;
  dynamic type;
  dynamic velocityHedge;
  int? originalPrice;
  int? weight;
  int? cartType;
  Passenger? passenger;

  Items(
      {this.giftCategory,
      this.hostHedge,
      this.nonSensicalHedge,
      this.obscenitiesHedge,
      this.phoneHedge,
      this.name,
      this.quantity,
      this.sku,
      this.unitPrice,
      this.risk,
      this.timeHedge,
      this.type,
      this.velocityHedge,
      this.originalPrice,
      this.weight,
      this.cartType,
      this.passenger});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
