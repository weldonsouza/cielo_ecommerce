// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    giftCategory: json['GiftCategory'],
    hostHedge: json['HostHedge'],
    nonSensicalHedge: json['NonSensicalHedge'],
    obscenitiesHedge: json['ObscenitiesHedge'],
    phoneHedge: json['PhoneHedge'],
    name: json['Name'] as String,
    quantity: json['Quantity'] as int,
    sku: json['Sku'] as String,
    unitPrice: json['UnitPrice'] as int,
    risk: json['Risk'],
    timeHedge: json['TimeHedge'],
    type: json['Type'],
    velocityHedge: json['VelocityHedge'],
    originalPrice: json['OriginalPrice'] as int,
    weight: json['Weight'] as int,
    cartType: json['CartType'] as int,
    passenger: json['Passenger'] == null
        ? null
        : Passenger.fromJson(json['Passenger'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('GiftCategory', instance.giftCategory);
  writeNotNull('HostHedge', instance.hostHedge);
  writeNotNull('NonSensicalHedge', instance.nonSensicalHedge);
  writeNotNull('ObscenitiesHedge', instance.obscenitiesHedge);
  writeNotNull('PhoneHedge', instance.phoneHedge);
  writeNotNull('Name', instance.name);
  writeNotNull('Quantity', instance.quantity);
  writeNotNull('Sku', instance.sku);
  writeNotNull('UnitPrice', instance.unitPrice);
  writeNotNull('Risk', instance.risk);
  writeNotNull('TimeHedge', instance.timeHedge);
  writeNotNull('Type', instance.type);
  writeNotNull('VelocityHedge', instance.velocityHedge);
  writeNotNull('OriginalPrice', instance.originalPrice);
  writeNotNull('Weight', instance.weight);
  writeNotNull('CartType', instance.cartType);
  writeNotNull('Passenger', instance.passenger);
  return val;
}
