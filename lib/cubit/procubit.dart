import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/cubit/prostate.dart';
import 'package:pro_1/data/datasource/static.dart';

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
  OnboardingCubit() : super(IntialOnboarding(0, PageController()));

  void next() async {
    
    emit(Curruntpage(
    state.currentPage+ 1, state.pageController ));
     state.pageController.animateToPage(state.currentPage, duration: Duration(microseconds:900), curve: Curves.easeInOut)
    ;}
  void skip( ) async {
    emit(Curruntpage(
    onBoardingList.length,state.pageController ));
    state.pageController.animateToPage(state.currentPage, duration: Duration(microseconds: 900), curve: Curves.easeInOut);}
  

  void onpageChanged(int index) {
    var current = state.currentPage;
    current=index;
    emit(Curruntpage(current,state.pageController));
  }
}
