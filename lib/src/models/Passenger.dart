part 'Passenger.g.dart';

/// Classe Passenger da documentação oficial Cielo Ecommerce
class Passenger {
  String? name;
  String? identity;
  String? status;
  String? rating;
  String? email;
  String? phone;
  String? passengerType;

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
