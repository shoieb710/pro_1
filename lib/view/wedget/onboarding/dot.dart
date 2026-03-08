import 'package:flutter/widgets.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/prostate.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, required this.length, required this.bottomPadding, required this.state});
  final int length ;
  final double bottomPadding ;
  final Onboardingstate state;
  @override
  Widget build(BuildContext context) {
    
                if (state is Curruntpage || state is IntialOnboarding) {
                   return  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      length,
                      (index) => 
                      
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 700),
                        margin: EdgeInsets.only(right: 5,bottom: bottomPadding),
                        width: state.currentPage == index ? 50 : 5,
                        height: 8,
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
               
             
  }
}