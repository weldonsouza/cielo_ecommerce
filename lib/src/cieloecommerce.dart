import 'package:dio/dio.dart';
import '../cielo_ecommerce.dart';

class CieloEcommerce {
  final Environment environment;
  final Merchant merchant;
  Dio dio;

  CieloEcommerce({this.environment, this.merchant}) {
    dio = Dio(BaseOptions(headers: {
      "MerchantId": this.merchant.merchantId,
      "MerchantKey": this.merchant.merchantKey
    }));
  }

  Future<Sale> createSale(Sale sale) async {
    try {
      Response response =
          await dio.post("${environment.apiUrl}/1/sales/", data: sale.toJson());
      return Sale.fromJson(response.data);
    } on DioError catch (e) {
      if (e?.response != null && e?.response != "") {
        if (e.response.data != null) {
          if (e.response.statusCode == 500) {
            if (e.response.data != null) {
              if (e.response?.data["Message"] != null) {
                error = e.response?.data["Message"]?.toString();
                if (e.response?.data["ExceptionMessage"] != null) {
                  print('Foi Dio nested');
                  error =
                  "$error Details: ${e.response?.data["ExceptionMessage"]
                      ?.toString()}";
                }
              }
            }
          } else {
            print('Foi Dio Exception');
            error = e.response.toString();
          }
        }
      }
      print(error);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  Future<Sale> getReturn(getSale) async {
    try {
      Response response =
          await dio.get("${environment.apiQueryUrl}/1/sales/$getSale");
      return Sale.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  Future<ReturnExecutionStatus> enableCapture(captureSale) async {
    try {
      Response response =
          await dio.put("${environment.apiUrl}/1/sales/$captureSale/capture");
      return ReturnExecutionStatus.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  Future<ReturnExecutionStatus> enableVoid(voidSale) async {
    try {
      Response response =
          await dio.put("${environment.apiUrl}/1/sales/$voidSale/void");
      return ReturnExecutionStatus.fromJson(response.data);
    } on DioError catch (e) {
      _getErrorDio(e);
    } catch (e) {
      throw CieloException(
          List<CieloError>()
            ..add(CieloError(
              code: 0,
              message: e.message,
            )),
          "unknown");
    }
    return null;
  }

  _getErrorDio(DioError e) {
    if (e?.response != null) {
      List<CieloError> errors =
          (e.response.data as List).map((i) => CieloError.fromJson(i)).toList();
      throw CieloException(errors, e.message);
    } else {
      throw CieloException(
          List<CieloError>()..add(CieloError(code: 0, message: "unknown")),
          e.message);
    }
  }
}
