import 'package:cekongkir/application/raja_ongkir/raja_ongkir_cubit.dart';
import 'package:cekongkir/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rajaOngkir = getIt<RajaOngkirCubit>();

  @override
  void initState() {
    rajaOngkir.getProvince();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => rajaOngkir,
        child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                loading: (e) {
                  print("IS LOADING");
                },
                error: (e) {
                  Get.showSnackbar(GetBar(
                    message: "Something Error",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.pink,
                    messageText: Text(
                      e.rajaOngkirFailed.description,
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(
                      seconds: 3,
                    ),
                  ));
                },
                onGetProvinceData: (e) {
                  print(e.listProvince.toString());
                });
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Center(
                child: Container(
                  child: Text('No data'),
                ),
              ),
              loading: (e) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (e) => Center(
                child: Text(e.rajaOngkirFailed.description),
              ),
              onGetProvinceData: (e) {
                return ListView.builder(
                    itemCount: e.listProvince.length,
                    itemBuilder: (context, i) =>
                        Text(e.listProvince[i].province));
              },
            );
          },
        ),
      ),
    );
  }
}
