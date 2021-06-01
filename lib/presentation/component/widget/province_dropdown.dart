import 'package:cekongkir/application/raja_ongkir/raja_ongkir_cubit.dart';
import 'package:cekongkir/domain/raja_ongkir/province/province.dart';
import 'package:flutter/material.dart';

class ProvinceDropDown extends StatefulWidget {
  ProvinceDropDown(
    this.listProvince, {
    Key? key,
    required this.cubit,
  }) : super(key: key);
  final List<Province> listProvince;
  final RajaOngkirCubit cubit;
  @override
  _ProvinceDropDownState createState() => _ProvinceDropDownState();
}

class _ProvinceDropDownState extends State<ProvinceDropDown> {
  late String selectedProvince;

  @override
  void initState() {
    selectedProvince = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: DropdownButtonFormField<Province>(
          isExpanded: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          hint: Text("Pilih Province"),
          onChanged: (e) {
            widget.cubit.getCity(e!.provinceId);
          },
          items: widget.listProvince
              .map((e) => DropdownMenuItem(value: e, child: Text(e.province)))
              .toList()),
    );
  }
}