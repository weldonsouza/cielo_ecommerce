// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passenger _$PassengerFromJson(Map<String, dynamic> json) {
  return Passenger(
    name: json['Name'] as String?,
    identity: json['Identity'] as String?,
    status: json['Status'] as String?,
    rating: json['Rating'] as String?,
    email: json['Email'] as String?,
    phone: json['Phone'] as String?,
    passengerType: json['PassengerType'] as String?,
  );
}

Map<String, dynamic> _$PassengerToJson(Passenger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  writeNotNull('Identity', instance.identity);
  writeNotNull('Status', instance.status);
  writeNotNull('Rating', instance.rating);
  writeNotNull('Email', instance.email);
  writeNotNull('Phone', instance.phone);
  writeNotNull('PassengerType', instance.passengerType);
  return val;
}
