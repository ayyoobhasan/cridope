

import 'package:cricidope/features/dashboad_screen.dart';
import 'package:cricidope/routes/route_names_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../features/login/login_screen.dart';
import '../features/splash_screen.dart';

class NavigationRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case loginScreenRoute:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());


      case dashboardScreenRoute:
        return MaterialPageRoute(builder: (_) =>  DashboardScreen());


      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}


