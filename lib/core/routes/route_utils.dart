

import 'package:kph_website/main.dart';

import '../../presentation/modules/home/pages/home_page.dart';

class RouteUtils{

  static const String gatewayPage = "/";
  static const String homePage = "/homePage";

  final routes = {
    gatewayPage: (context) => const HomePage(),
    homePage: (context) => const HomePage(),
  };

}