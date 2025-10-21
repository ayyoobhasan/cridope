

import 'package:flutter/material.dart';

import '../app_color.dart';
import 'app_logo.dart';


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      automaticallyImplyLeading: false,
      title:AppLogoHeader(useDivider: false,),
      actions: [
        Image.asset("assets/images/img_app2.png", height: 40, fit: BoxFit.cover),
        IconButton(
          icon: Icon(Icons.notifications, color: Colors.white),
          onPressed: () {},
        ),
        SizedBox(width: 6),
      ],
    );
  }
}
