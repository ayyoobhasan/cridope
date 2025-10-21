

import 'package:flutter/material.dart';

import '../app_color.dart';
import '../font_style.dart';


class SocialLoginButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onTap;

  const SocialLoginButton({required this.icon, required this.text, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 1.2),
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(text, style: mPrimary16W400),
              ],
            ),
            Positioned(
              left: 20,
              bottom: 0,
              top: 0,
              child: icon,
            )
          ],
        ),
      ),
    );
  }
}
