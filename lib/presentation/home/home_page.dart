import 'package:cekongkir/application/raja_ongkir/raja_ongkir_cubit.dart';
import 'package:cekongkir/application/raja_ongkir/rajaongkir_controller.dart';
import 'package:cekongkir/domain/raja_ongkir/cost/cost_request.dart';
import 'package:cekongkir/domain/raja_ongkir/province/province.dart';
import 'package:cekongkir/injection.dart';
import 'package:cekongkir/presentation/component/widget/city_dropdown.dart';
import 'package:cekongkir/presentation/component/widget/destination_city_dropdown.dart';
import 'package:cekongkir/presentation/component/widget/province_dropdown.dart';
import 'package:cekongkir/presentation/result/result_page.dart';
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
  final originProvinceCubit = getIt<RajaOngkirCubit>();
  final originCityCubit = getIt<RajaOngkirCubit>();
  final destinationProvinceCubit = getIt<RajaOngkirCubit>();
  final destinationCityCubit = getIt<RajaOngkirCubit>();
  final costCubit = getIt<RajaOngkirCubit>();

  final _weightController = TextEditingController();
  final controller = Get.put(RajaongkirController());

  @override
  void initState() {
    originProvinceCubit.getProvince();
    destinationProvinceCubit.getProvince();
    super.initState();
  }

  rajaOngkirListener(BuildContext context, RajaOngkirState state) {
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
        print("List Province Success");
      },
    );
  }

  originProvinceBuilder(BuildContext context, RajaOngkirState state) {
    return state.maybeMap(
      orElse: () => Container(),
      loading: (e) {
        return Container(
          padding: EdgeInsets.all(8),
          child: DropdownButtonFormField<Province>(
              isExpanded: true,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                ),
                border: OutlineInputBorder(),
              ),
              hint: Text("Getting data..."),
              items: []),
        );
      },
      error: (e) => Center(
        child: Text(e.rajaOngkirFailed.description),
      ),
      onGetProvinceData: (e) {
        return ProvinceDropDown(
          e.listProvince,
          cubit: originCityCubit,
        );
      },
    );
  }

  destinationProvinceBuilder(BuildContext context, RajaOngkirState state) {
    return state.maybeMap(
      orElse: () => Container(),
      loading: (e) {
        return Container(
          padding: EdgeInsets.all(8),
          child: DropdownButtonFormField<Province>(
              isExpanded: true,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                ),
                border: OutlineInputBorder(),
              ),
              hint: Text("Getting data..."),
              items: []),
        );
      },
      error: (e) => Center(
        child: Text(e.rajaOngkirFailed.description),
      ),
      onGetProvinceData: (e) {
        return ProvinceDropDown(
          e.listProvince,
          cubit: destinationCityCubit,
        );
      },
    );
  }

  originCityBuilder(BuildContext context, RajaOngkirState state) {
    return state.maybeMap(
      orElse: () => Container(
        padding: EdgeInsets.all(8),
        child: DropdownButtonFormField<Province>(
            isExpanded: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            hint: Text("No Data"),
            items: []),
      ),
      loading: (e) {
        return Container(
          padding: EdgeInsets.all(8),
          child: DropdownButtonFormField<Province>(
              isExpanded: true,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                ),
                border: OutlineInputBorder(),
              ),
              hint: Text("Getting data..."),
              items: []),
        );
      },
      error: (e) => Center(
        child: Text(e.rajaOngkirFailed.description),
      ),
      onGetCityData: (e) {
        return CityDropDown(e.listCity);
      },
    );
  }

  destinationCityBuilder(BuildContext context, RajaOngkirState state) {
    return state.maybeMap(
      orElse: () => Container(
        padding: EdgeInsets.all(8),
        child: DropdownButtonFormField<Province>(
            isExpanded: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            hint: Text("No Data"),
            items: []),
      ),
      loading: (e) {
        return Container(
          padding: EdgeInsets.all(8),
          child: DropdownButtonFormField<Province>(
              isExpanded: true,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(),
                ),
                border: OutlineInputBorder(),
              ),
              hint: Text("Getting data..."),
              items: []),
        );
      },
      error: (e) => Center(
        child: Text(e.rajaOngkirFailed.description),
      ),
      onGetCityData: (e) {
        return DestinationCityDropdown(e.listCity);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
            create: (context) => costCubit,
            child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  loading: (e) {
                    print("ON LOADING GET COST");
                  },
                  error: (e) {
                    print(e.toString());
                  },
                  onGetCostData: (e) {
                    // print(e.costResponse.toString());
                    Get.toNamed(ResultPage.routeName,
                        arguments: e.costResponse);
                  });
            }, builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Origin / Asal",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => originProvinceCubit,
                      child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                        listener: rajaOngkirListener,
                        builder: (context, state) =>
                            originProvinceBuilder(context, state),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => originCityCubit,
                      child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                        listener: rajaOngkirListener,
                        builder: (context, state) =>
                            originCityBuilder(context, state),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Destination / Tujuan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => destinationProvinceCubit,
                      child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                        listener: rajaOngkirListener,
                        builder: (context, state) =>
                            destinationProvinceBuilder(context, state),
                      ),
                    ),
                    BlocProvider(
                      create: (context) => destinationCityCubit,
                      child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                        listener: rajaOngkirListener,
                        builder: (context, state) =>
                            destinationCityBuilder(context, state),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Berat",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _weightController,
                          validator: (e) {
                            if (e.toString().isEmpty) {
                              return "Weight can't be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Weight",
                          ),
                        ),
                      ),
                    ),
                    state.maybeMap(
                        orElse: () => defaultButton(),
                        loading: (e) => loadingButton()),
                  ],
                ),
              );
            })),
      ),
    );
  }

  Widget defaultButton() {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          var request = CostRequest(
            weight: int.parse(_weightController.text),
            courier: "jne,tiki,pos",
            destination: controller.getDestinationCity().cityId,
            origin: controller.getOriginCity().cityId,
          );

          costCubit.getCost(request);

          // final data = controller.getCity();
          print(request);
        },
        child: Text(
          "Cek Ongkir",
        ),
      ),
    );
  }

  Widget loadingButton() {
    return Container(
      margin: EdgeInsets.all(8),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: null,
          child: Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}
