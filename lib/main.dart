import 'package:cricidope/features/dashboad_screen.dart';
import 'package:flutter/material.dart';

import 'core/app_theme.dart';
import 'features/login/login_screen.dart';



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
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}


