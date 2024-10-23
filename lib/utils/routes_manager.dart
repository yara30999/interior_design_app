import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../screens/details_screen.dart';
import '../screens/home_screen.dart';

class Routes {
  static const String homeRoute = "/";
  static const String detailsRoute = "details_route";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    final PackageModel? itemData = settings.arguments as PackageModel?;
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.detailsRoute:
        return MaterialPageRoute(
            builder: (_) => DetailsScreen(
                  item: itemData!,
                ));
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('not found'),
              ),
              body: const Center(child: Text('no route found here')),
            ));
  }
}
