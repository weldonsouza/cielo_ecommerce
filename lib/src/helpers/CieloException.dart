import '../../cielo_ecommerce.dart';

class CieloException implements Exception {
  final List<CieloError> errors;
  final String message;

  CieloException(this.errors, this.message);
}
