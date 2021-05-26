import 'package:cekongkir/presentation/dashboard/dashboard.dart';
import 'package:cekongkir/presentation/home/home_page.dart';
import 'package:get/get.dart';

class Routes {
 static List<GetPage> getPages = [
    GetPage(name: HomePage.routeName, page: () => HomePage()),
    GetPage(name: DashboardPage.routeName, page: () => DashboardPage()),
  ];
}
