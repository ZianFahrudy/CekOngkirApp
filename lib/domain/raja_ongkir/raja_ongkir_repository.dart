import 'package:cekongkir/domain/raja_ongkir/city/city.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_request.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_response.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_results.dart';
import 'package:cekongkir/domain/raja_ongkir/province/province.dart';
import 'package:cekongkir/domain/raja_ongkir/raja_ongkir_failed.dart';
import 'package:cekongkir/utills/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class IRajaOngkir {
  Future<Either<RajaOngkirFailed, List<Province>>> getProvince();
  Future<Either<RajaOngkirFailed, List<City>>> getCity(String provinceId);
  Future<Either<RajaOngkirFailed, CostResponse>> getCost(CostRequest request);
}

@LazySingleton(as: IRajaOngkir)
class RORepository extends IRajaOngkir {
  Dio _dio = Dio();

  @override
  Future<Either<RajaOngkirFailed, List<Province>>> getProvince() async {
    Response response;

    try {
      response =
          await _dio.get(Constants.baseURLRajaOngkir + "starter/province",
              options: Options(headers: {
                'key': Constants.apiKeyRajaOngkir,
              }));

      List<dynamic> listData = response.data['rajaongkir']['results'];

      var _listResult = listData.map((e) => Province.fromJson(e)).toList();

      return right(_listResult);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        var errorData = e.response!.data['rajaongkir']['status'];
        var _errorResult = RajaOngkirFailed.fromJson(errorData);
        return left(_errorResult);
      }
      return left(RajaOngkirFailed());
    } catch (e) {
      return left(RajaOngkirFailed(description: e.toString()));
    }
  }

  @override
  Future<Either<RajaOngkirFailed, List<City>>> getCity(
      String provinceId) async {
    Dio _dio = Dio();

    try {
      Response response;

      response = await _dio.get(Constants.baseURLRajaOngkir + "/starter/city",
          queryParameters: {
            'province': provinceId,
          },
          options: Options(headers: {
            'key': Constants.apiKeyRajaOngkir,
          }));

      List listData = response.data['rajaongkir']['results'];

      var result = listData.map((e) => City.fromJson(e)).toList();

      return right(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        var errorData = e.response!.data['rajaongkir']['status'];
        var _errorResult = RajaOngkirFailed.fromJson(errorData);
        return left(_errorResult);
      }
      return left(RajaOngkirFailed());
    } catch (e) {
      return left(RajaOngkirFailed(description: e.toString()));
    }
  }

  @override
  Future<Either<RajaOngkirFailed, CostResponse>> getCost(
      CostRequest request) async {
    Dio _dio = Dio();

    List<CostResponse> _listCostResponse = <CostResponse>[];

    // "jne, tiki, pos" => [jne, tiki, pos]
    List<String> courierList = request.courier.split(",");

    try {
      List<Response> response;

      // response = await _dio.post(Constants.baseURLRajaOngkir + "/starter/cost",
      //     options: Options(headers: {'key': Constants.apiKeyRajaOngkir}),
      //     data: request.toJson());

      final dioList = courierList
          .map((e) => _dio.post(Constants.baseURLRajaOngkir + "/starter/cost",
              options: Options(headers: {'key': Constants.apiKeyRajaOngkir}),
              data: request.copyWith(courier: e)))
          .toList();

      response = await Future.wait(dioList);

      response.forEach((element) {
        dynamic listData = element.data['rajaongkir'];

        final result = CostResponse.fromJson(listData);

        _listCostResponse.add(result);
      });

      // dynamic listData = response.data['rajaongkir'];
      List<CostResults> _listResults = <CostResults>[];
      CostResponse _newData = CostResponse(
        destinationDetails: _listCostResponse.first.destinationDetails,
        originDetails: _listCostResponse.first.originDetails,
      );

      _listCostResponse.forEach((element) {
        _listResults.addAll(element.results);
      });

      final _resultsData = _newData.copyWith(results: _listResults);

      return right(_resultsData);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        var errorData = e.response!.data['rajaongkir']['status'];
        var _errorResult = RajaOngkirFailed.fromJson(errorData);
        return left(_errorResult);
      }
      return left(RajaOngkirFailed());
    } catch (e) {
      return left(RajaOngkirFailed(description: e.toString()));
    }
  }

  // @override
  // Future<Either<RajaOngkirFailed, CostResponse>> getCost(
  //     CostRequest request) async {
  //   Dio _dio = Dio();

  //   try {
  //     Response response;

  //     response = await _dio.post(Constants.baseURLRajaOngkir + "/starter/cost",
  //         options: Options(headers: {'key': Constants.apiKeyRajaOngkir}),
  //         data: request.toJson());

  //     dynamic listData = response.data['rajaongkir'];

  //     final result = CostResponse.fromJson(listData);

  //     return right(result);
  //   } on DioError catch (e) {
  //     if (e.type == DioErrorType.response) {
  //       var errorData = e.response!.data['rajaongkir']['status'];
  //       var _errorResult = RajaOngkirFailed.fromJson(errorData);
  //       return left(_errorResult);
  //     }
  //     return left(RajaOngkirFailed());
  //   } catch (e) {
  //     return left(RajaOngkirFailed(description: e.toString()));
  //   }
  // }
}
