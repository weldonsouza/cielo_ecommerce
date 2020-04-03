// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return Travel(
    route: json['Route'] as String,
    departureTime: json['DepartureTime'] as String,
    journeyType: json['JourneyType'] as String,
    legs: (json['Legs'] as List)
        ?.map(
            (e) => e == null ? null : Legs.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TravelToJson(Travel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Route', instance.route);
  writeNotNull('DepartureTime', instance.departureTime);
  writeNotNull('JourneyType', instance.journeyType);
  writeNotNull('Legs', instance.legs);
  return val;
}
