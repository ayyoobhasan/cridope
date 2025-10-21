

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
  final isSelected = selectedIndex == index;

  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 2.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            asset,
            height: 22,
            width: 22,
            color: isSelected ? AppColors.primary : Colors.grey,
          ),
          const SizedBox(height: 3), // spacing between icon & label
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected ? AppColors.primary : Colors.grey,
            ),
          ),
        ],
      ),
    ),
    label: '',
    tooltip: '',
  );
}
