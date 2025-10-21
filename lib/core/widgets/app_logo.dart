

import 'package:flutter/material.dart';

import '../app_color.dart';


class AppLogoHeader extends StatelessWidget {
  final bool actualPadding;
  const AppLogoHeader({this.actualPadding = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset("assets/images/img_app1.png", height: actualPadding ? 50 : 44, fit: BoxFit.cover);
  }
}
