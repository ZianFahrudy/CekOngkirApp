import 'package:cekongkir/domain/raja_ongkir/cost/cost_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  static const String routeName = '/result';

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late CostResponse _response;
  @override
  void initState() {
    _response = Get.arguments as CostResponse;

    print(_response.originDetails.toString());
    print(_response.results.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        children: [
          cityListTile(_response.originDetails!.cityName, "Asal Kota",
              Colors.green[200]),
          cityListTile(_response.destinationDetails!.cityName, "Tujuan Kota",
              Colors.pink[200]),
          Expanded(
            child: ListView.builder(
                itemCount: _response.results.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        child: Text(
                          _response.results[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Column(
                          children: _response.results[index].costs
                              .map((e) => ListTile(
                                    title: Text(e.service),
                                    subtitle: Text(e.description),
                                    trailing: Column(
                                      children: e.cost
                                          .map((e) => Column(
                                                children: [
                                                  Text(e.value.toString()),
                                                  Text(e.etd + " Hari"),
                                                ],
                                              ))
                                          .toList(),
                                    ),
                                  ))
                              .toList())
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget cityListTile(String title, String subtitle, Color? color) {
    return ListTile(
        tileColor: color,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle));
  }
}
