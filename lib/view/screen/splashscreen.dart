

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/core/constant/imageassets.dart';
import 'package:pro_1/view/screen/onboaarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.logo),
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grayText,
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: Offset(5, 7),
                  ),
                ],
              ))
        ],
      ),
      backgroundColor: AppColors.primary,
      nextScreen:OnBoaarding(),
      splashIconSize: 200,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade ,
      animationDuration: Duration(seconds: 1), 
    );
  }
}
