import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/cubit/prostate.dart';
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
        child: BlocBuilder<OnboardingCubit, Onboardingstate>(
          builder: (context, state) {
            return Column(
              children: [
                OnboardingSlider(
                  onBoardingList: onBoardingList,
                  controller: state.pageController,
                ),
                Dot(
                  length: onBoardingList.length,
                  bottomPadding: 30,
                  state: state,
                ),
                state.currentPage == 2
                    ? Onboardingbutton(text: "ابدأ الأن", onPressed: () {})
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Onboardingbutton(
                              text: "تخطي",
                              onPressed: () {
                                context.read<OnboardingCubit>().skip();
                              },
                              foregroundColor: AppColors.primary,
                              backgroundColor: AppColors.darkTextSecondary,
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Onboardingbutton(
                              text: "التالي",
                              onPressed: () {
                                context.read<OnboardingCubit>().next();
                              },
                            ),
                          ),
                        ],
                      ),
                Padding(
                  padding: const EdgeInsets.only(top: 1,bottom: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                  
                        child: Text(
                          " و سياسه الخصوصيه ",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.accentCopper,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "شروط الخدمه",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.accentCopper,
                          ),
                        ),
                      ),
                      Text(
                        "بلاستمرار انت توافق علي",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
