// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

/// Classe helper de serialização JSON
Travel _$TravelFromJson(Map<String, dynamic> json) {
  return Travel(
    route: json['Route'] as String?,
    departureTime: json['DepartureTime'] as String?,
    journeyType: json['JourneyType'] as String?,
    legs: (json['Legs'] as List<dynamic>?)
        ?.map((e) => Legs.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

/// Classe helper de serialização JSON
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
