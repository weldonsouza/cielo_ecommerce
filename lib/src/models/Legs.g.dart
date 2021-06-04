// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Legs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Legs _$LegsFromJson(Map<String, dynamic> json) {
  return Legs(
    destination: json['Destination'] as String?,
    origin: json['Origin'] as String?,
  );
}

Map<String, dynamic> _$LegsToJson(Legs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Destination', instance.destination);
  writeNotNull('Origin', instance.origin);
  return val;
}
