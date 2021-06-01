import 'package:cekongkir/domain/raja_ongkir/city/city.dart';
import 'package:get/get.dart';

class RajaongkirController extends GetxController {
  final originCity = City().obs;
  final destinationCity = City().obs;

  void setOriginCity(City city) {
    this.originCity.value = city;
  }

  void setDestinationCity(City city) {
    this.destinationCity.value = city;
  }

  City getOriginCity() => this.originCity.value;
  City getDestinationCity() => this.destinationCity.value;
}
