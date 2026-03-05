import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/cubit/prostate.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, required this.length});
  final int length ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: BlocBuilder<OnboardingCubit, Onboardingstate>(
                builder: (context, state) {
                  if (state is Curruntpage || state is IntialOnboarding) {
                     return  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        length,
                        (index) => 
                        
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 700),
                          margin: const EdgeInsets.only(right: 5),
                          width: state.currentPage == index ? 50 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                            color: state.currentPage == index ? AppColors.primary: AppColors.grayText,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  );
                  
                  
                  }else{
                    return Container();
                  }
                 
                },
              ),
    );
  }
}