

import 'package:flutter/material.dart';

import '../app_color.dart';


class HomeHorizontalTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int) onTap;
  const HomeHorizontalTabBar({required this.tabs, required this.selectedIndex, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      color: Colors.transparent,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 8),
        itemCount: tabs.length,
        separatorBuilder: (_, __) => SizedBox(width: 18),
        itemBuilder: (ctx, idx) {
          final isActive = selectedIndex == idx;
          return GestureDetector(
            onTap: () => onTap(idx),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical:2),
              decoration: isActive
                  ? BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(18),
              )
                  : null,
              alignment: Alignment.center,
              child: Text(
                tabs[idx],
                style: TextStyle(
                  color: isActive ? Colors.white : AppColors.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
