
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';


class TopTabBar extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final Function(int) onTabSelected;

  const TopTabBar({required this.labels, required this.selectedIndex, required this.onTabSelected, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: AppColors.bgLight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(labels.length, (idx) {
          final isActive = idx == selectedIndex;
          return GestureDetector(
            onTap: () => onTabSelected(idx),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: isActive
                  ? BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16),
              )
                  : null,
              child: Text(
                labels[idx],
                style: TextStyle(
                  color: isActive ? Colors.white : AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
