import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/cubit/prostate.dart';

class HomeCubit extends Cubit<Homestate> {
  HomeCubit() : super(IntialCounter(0));

  void increment() {
    emit(IncrementCounter(state.counter + 1));
  }

  void decrement() {
    emit(DecrementCounter(state.counter - 1));
  }
}

class OnboardingCubit extends Cubit<Onboardingstate> {
  OnboardingCubit() : super(IntialOnboarding(0));

  // void next() async {
  //   emit(Curruntpage(
  //   state.currentPage+ 1 ));
  //   final prefs = await SharedPreferences.getInstance();
  //   if (state.currentPage > onBoardingList.length-1){
  //     prefs.setString("onboarding", "1");
  //   }else{

  //   state.pageController.animateToPage(state.currentPage, duration: Duration(microseconds: 900), curve: Curves.easeInOut);}

  // }

  void onpageChanged(int index) {
    var current = state.currentPage;
    current=index;
    emit(Curruntpage(current));
  }
}
