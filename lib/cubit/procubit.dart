import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/cubit/prostate.dart';
import 'package:pro_1/data/datasource/static.dart';
import 'package:pro_1/view/screen/workerhomepage.dart';

class HomescreenCubit extends Cubit<Homescreenstate> {
  HomescreenCubit() : super(IntialHomescreen(3,[
    const WorkerHomepage(),
    const WorkerHomepage(),
    const WorkerHomepage(),
    const WorkerHomepage(),
  ]));
  void updateCurrntPage(int curr){
    emit(Currentpage(curr, [
    const WorkerHomepage(),
    const WorkerHomepage(),
    const WorkerHomepage(),
    const WorkerHomepage(),
  ]));

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


class WorkerHomepageCubit extends Cubit<WorkerHomepagestate> {
  WorkerHomepageCubit() : super(IntialWorkerHomepage(false));

  void changeStatus(bool status){
    emit(ChangeWorkerStatus(status));
  }


}