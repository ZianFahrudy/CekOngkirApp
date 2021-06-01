import 'package:cekongkir/application/raja_ongkir/rajaongkir_controller.dart';
import 'package:cekongkir/domain/raja_ongkir/city/city.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DestinationCityDropdown extends StatefulWidget {
  DestinationCityDropdown(this.listCity, {Key? key}) : super(key: key);
  final List<City> listCity;

  @override
  _DestinationCityDropdownState createState() =>
      _DestinationCityDropdownState();
}

class _DestinationCityDropdownState extends State<DestinationCityDropdown> {
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

              roController.setDestinationCity(e!);
            });
          },
          items: widget.listCity
              .map((e) => DropdownMenuItem(value: e, child: Text(e.cityName)))
              .toList()),
    );
  }
}
