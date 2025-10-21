

import 'package:cricidope/routes/route_names_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/app_color.dart';
import '../core/font_style.dart';
import '../core/widgets/app_logo.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, loginScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogoHeader(),
            const SizedBox(height: 22),
            Text(
              'Cricdope',
              style: mCardBg32Bold,
            ),
            const SizedBox(height: 5),
            Text(
              'Cricket Analytics',
              style:mCardBg15,
            ),
            const SizedBox(height: 50),
            const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2.5,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Show status bar back when leaving splash
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
}
