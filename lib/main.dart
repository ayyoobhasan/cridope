import 'package:cricidope/features/dashboad_screen.dart';
import 'package:cricidope/routes/route_names_const.dart';
import 'package:cricidope/routes/routes.dart';
import 'package:flutter/material.dart';

import 'core/app_theme.dart';
import 'features/login/login_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cridope',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      initialRoute: splashScreenRoute,
      onGenerateRoute: NavigationRouter.generateRoute,
      navigatorKey: navigatorKey,
    );
  }
}


