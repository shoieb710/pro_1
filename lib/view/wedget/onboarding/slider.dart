import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/procubit.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider({super.key, required this.onBoardingList});
  final List<dynamic> onBoardingList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: PageView.builder(
        onPageChanged: (value) {
          context.read<OnboardingCubit>().onpageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Card(
              margin: EdgeInsets.only(top: 80, left: 30, right: 30),
              shadowColor: AppColors.accentCopper,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Theme.of(context).cardTheme.color,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: double.infinity,
                  height: 260,
                  child: Image.asset( onBoardingList[i].image!,
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                                ),
                )),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].title!,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Container(
              padding: const EdgeInsets.only( left: 30, right: 30),
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].subtitle!,
                textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
