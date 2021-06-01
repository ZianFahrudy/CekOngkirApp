import 'package:cekongkir/application/raja_ongkir/rajaongkir_controller.dart';
import 'package:cekongkir/domain/raja_ongkir/city/city.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityDropDown extends StatefulWidget {
  CityDropDown(this.listCity, {Key? key}) : super(key: key);
  final List<City> listCity;

  @override
  _CityDropDownState createState() => _CityDropDownState();
}

class _CityDropDownState extends State<CityDropDown> {
  final roController = Get.put(RajaongkirController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: DropdownButtonFormField<City>(
          isExpanded: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          hint: Text("Pilih City"),
          onChanged: (e) {
            setState(() {
              // selectedCity = e!.cityId;
              // print(selectedCity);

              roController.setOriginCity(e!);
            });
          },
          items: widget.listCity
              .map((e) => DropdownMenuItem(value: e, child: Text(e.cityName)))
              .toList()),
    );
  }
}
