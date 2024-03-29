import '../../cielo_ecommerce.dart';

/// Classe helper de exceção Cielo

class CieloException implements Exception {
  final List<CieloError> errors;
  final String message;

  CieloException(this.errors, this.message);
}
