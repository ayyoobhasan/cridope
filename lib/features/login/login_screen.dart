
import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import '../../core/font_style.dart';
import '../../core/widgets/app_logo.dart';
import '../../core/widgets/social_login_button.dart';
import '../../routes/route_names_const.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary, // Bottom color band
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.6,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/virat2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 48,
                      left: 0,
                      right: 0,
                      child: Center(child: AppLogoHeader()),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,left: 20,right: 20),
              padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Get started',
                      style: mLightBlack28W500
                  ),
                  SizedBox(height: 24),
                  SocialLoginButton(
                    icon: Image.asset('assets/images/u_google.png', height: 22),
                    text: 'Sign in with Google',
                    onTap: () {
                      Navigator.pushNamed(context, dashboardScreenRoute);
                    },
                  ),
                  SizedBox(height: 16),
                  SocialLoginButton(
                    icon: Image.asset('assets/images/u_facebook.png', height: 22),
                    text: 'Sign in with Facebook',
                    onTap: () {
                      Navigator.pushNamed(context, dashboardScreenRoute);
                    },
                  ),
                  SizedBox(height: 16),
                  SocialLoginButton(
                  icon: Image.asset('assets/images/u_Apple.png', height: 22),
                    text: 'Sign in with Apple',
                    onTap: () {
                      Navigator.pushNamed(context, dashboardScreenRoute);
                    },
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.black,height: 1,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text('or', style: TextStyle(color: Colors.grey)),
                      ),
                      Expanded(child: Divider(color: Colors.black,height: 1,)),
                    ],
                  ),
                  SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Text('Sign in with password', style: mCardBg14W600),
                      onPressed: () {
                        Navigator.pushNamed(context, dashboardScreenRoute);
                      },
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: mLightBlack14W400),
                      GestureDetector(
                        onTap: () {},
                        child: Text('Sign up', style: mPrimary16W400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


