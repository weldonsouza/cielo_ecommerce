import 'package:json_annotation/json_annotation.dart';
import '../cielo_ecommerce.dart';

part 'Cart.g.dart';

@JsonSerializable(includeIfNull: false)
class Cart {
  bool isGift;
  bool returnsAccepted;
  List<Items> items;

  Cart({this.isGift,
         this.returnsAccepted,
         this.items
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
