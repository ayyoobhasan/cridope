

import 'package:flutter/material.dart';

import '../app_color.dart';


class AppLogoHeader extends StatelessWidget {
  final bool useDivider;
  const AppLogoHeader({this.useDivider = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset("assets/images/img_app1.png", height: useDivider ? 50:44, fit: BoxFit.cover);
  }
}
