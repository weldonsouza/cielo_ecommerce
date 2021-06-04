import 'package:dio/dio.dart';

import '../cielo_ecommerce.dart';
import 'models/models.dart';

class CieloEcommerce {
  final Environment? environment;
  final Merchant? merchant;
  late Dio dio;

  CieloEcommerce({this.environment, this.merchant}) {
    dio = Dio(BaseOptions(headers: {
      "MerchantId": this.merchant!.merchantId,
      "MerchantKey": this.merchant!.merchantKey
    }));
  }

  ///Criando uma transação de compra
  Future<Sale?> createSale(Sale sale) async {
    try {
      Response response = await dio.post("${environment!.apiUrl}/1/sales/",
          data: sale.toJson());

      return Sale.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } on CieloException catch (e) {
      _getErrorCieloException(e);
    }

    return null;
  }

  ///Função para consulta das transações
  Future<Sale?> getReturn(getSale) async {
    try {
      Response response =
          await dio.get("${environment!.apiQueryUrl}/1/sales/$getSale");
      return Sale.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } on CieloException catch (e) {
      _getErrorCieloException(e);
    }

    return null;
  }

  ///Função para aprovar a compra
  Future<ReturnExecutionStatus?> enableCapture(captureSale) async {
    try {
      Response response =
          await dio.put("${environment!.apiUrl}/1/sales/$captureSale/capture");
      return ReturnExecutionStatus.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } on CieloException catch (e) {
      _getErrorCieloException(e);
    }
    return null;
  }

  ///Função para cancelar a compra
  Future<ReturnExecutionStatus?> enableVoid(voidSale) async {
    try {
      Response response =
          await dio.put("${environment!.apiUrl}/1/sales/$voidSale/void");
      return ReturnExecutionStatus.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } on CieloException catch (e) {
      _getErrorCieloException(e);
    }
    return null;
  }

  ///Função para Tokenizar um Cartão
  Future<CreditCard?> tokenizeCard(CreditCard card) async {
    try {
      Response response =
          await dio.post("${environment!.apiUrl}/1/card/", data: card.toJson());
      card.cardToken = response.data["CardToken"];
      card.cardNumber =
          "****" + card.cardNumber!.substring(card.cardNumber!.length - 4);
      return card;
    } on DioError catch (e) {
      _getErrorDio(e);
    } on CieloException catch (e) {
      _getErrorCieloException(e);
    }
    return null;
  }

  ///Função de tratamento de erros
  _getErrorDio(DioError e) {
    var error;

    if (e.response != null && e.response != "") {
      if (e.response!.data != null) {
        if (e.response!.statusCode == 500) {
          if (e.response!.data != null) {
            if (e.response?.data["Message"] != null) {
              error = e.response?.data["Message"]?.toString();
              if (e.response?.data["ExceptionMessage"] != null) {
                error =
                    "$error Details: ${e.response?.data["ExceptionMessage"]?.toString()}";
              }
            }
          }
        } else {
          error = e.response.toString();
        }
      }
    }
  }

  _getErrorCieloException(CieloException e) {
    throw CieloException(
        <CieloError>[]..add(CieloError(
            code: 0,
            message: e.message,
          )),
        "unknown");
  }
}
