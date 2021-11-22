// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart(
    isGift: json['IsGift'] as bool?,
    returnsAccepted: json['ReturnsAccepted'] as bool?,
    items: (json['Items'] as List<dynamic>?)
        ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

/// Classe helper de serialização JSON
Map<String, dynamic> _$CartToJson(Cart instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('IsGift', instance.isGift);
  writeNotNull('ReturnsAccepted', instance.returnsAccepted);
  writeNotNull('Items', instance.items);
  return val;
}
