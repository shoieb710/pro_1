import 'package:flutter/material.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/data/datasource/static.dart';
import 'package:pro_1/view/wedget/onboarding/dot.dart';
import 'package:pro_1/view/wedget/onboarding/onboardingbutton.dart';
import 'package:pro_1/view/wedget/onboarding/slider.dart';

class OnBoaarding extends StatelessWidget {
  const OnBoaarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            OnboardingSlider(onBoardingList: onBoardingList),
            Dot(length: onBoardingList.length),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  Onboardingbutton(text: "ابدأ الأن", onPressed: () {}),
                  Onboardingbutton(
                    text: "تسجيل الدخول",
                    onPressed: () {},
                    foregroundColor: AppColors.primary,
                    backgroundColor: AppColors.darkTextSecondary,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},

                        child: Text(
                          " و سياسه الخصوصيه ",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.accentCopper),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "شروط الخدمه",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.accentCopper),
                        ),
                      ),
                      Text(
                        "بلاستمرار انت  توافق علي",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
