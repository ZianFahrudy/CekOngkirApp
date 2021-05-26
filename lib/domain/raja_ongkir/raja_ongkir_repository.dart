import 'package:cekongkir/domain/raja_ongkir/province/province.dart';
import 'package:cekongkir/domain/raja_ongkir/raja_ongkir_failed.dart';
import 'package:cekongkir/utills/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class IRajaOngkir {
  Future<Either<RajaOngkirFailed, List<Province>>> getProvince();
  Future<Either<RajaOngkirFailed, List<Province>>> getCity();
}

@LazySingleton(as: IRajaOngkir)
class RORepository extends IRajaOngkir {
  Dio _dio = Dio();

  @override
  Future<Either<RajaOngkirFailed, List<Province>>> getProvince() async {
    Response response;

    try {
      response = await _dio.get(Constants.baseURLRajaOngkir + "starter/province",
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
  Future<Either<RajaOngkirFailed, List<Province>>> getCity() {
    throw UnimplementedError();
  }
}
