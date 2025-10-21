

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_color.dart';

BottomNavigationBarItem svgNavItem({
  required String asset,
  required String label,
  required int index,
  required int selectedIndex,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      asset,
      height: 20,
      width: 20,
      color: selectedIndex == index ? AppColors.primary : Colors.grey,
    ),
    label: label,
  );
}