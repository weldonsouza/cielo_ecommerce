import 'package:json_annotation/json_annotation.dart';

part 'Passenger.g.dart';

@JsonSerializable(includeIfNull: false)
class Passenger {
  String name;
  String identity;
  String status;
  String rating;
  String email;
  String phone;
  String passengerType;

  Passenger(
      {this.name,
      this.identity,
      this.status,
      this.rating,
      this.email,
      this.phone,
      this.passengerType});

  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerToJson(this);
}
