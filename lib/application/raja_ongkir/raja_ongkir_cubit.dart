import 'package:bloc/bloc.dart';
import 'package:cekongkir/domain/raja_ongkir/city/city.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_request.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_response.dart';
import 'package:cekongkir/domain/raja_ongkir/province/province.dart';
import 'package:cekongkir/domain/raja_ongkir/raja_ongkir_failed.dart';
import 'package:cekongkir/domain/raja_ongkir/raja_ongkir_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'raja_ongkir_state.dart';
part 'raja_ongkir_cubit.freezed.dart';

@injectable
class RajaOngkirCubit extends Cubit<RajaOngkirState> {
  RajaOngkirCubit(this._iRajaOngkir) : super(RajaOngkirState.initial());

  IRajaOngkir _iRajaOngkir;

  void getProvince() async {
    emit(RajaOngkirState.loading());
    try {
      final result = await _iRajaOngkir.getProvince();

      result.fold((l) => emit(RajaOngkirState.error(l)),
          (r) => emit(RajaOngkirState.onGetProvinceData(r)));
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFailed().copyWith(description: e.toString())));
    }
  }

  void getCity(String provinceId) async {
    emit(RajaOngkirState.loading());

    try {
      final result = await _iRajaOngkir.getCity(provinceId);

      result.fold((l) => emit(RajaOngkirState.error(l)),
          (r) => emit(RajaOngkirState.onGetCityData(r)));
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFailed().copyWith(description: e.toString())));
    }
  }

  void getCost(CostRequest request) async {
    emit(RajaOngkirState.loading());

    try {
      final result = await _iRajaOngkir.getCost(request);

      result.fold((l) => emit(RajaOngkirState.error(l)),
          (r) => emit(RajaOngkirState.onGetCostData(r)));
    } catch (e) {
      emit(RajaOngkirState.error(
          RajaOngkirFailed().copyWith(description: e.toString())));
    }
  }
}
