

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


sealed class Homescreenstate extends Equatable {
  final int currentpage;
  final List<Widget> listpage ;
   const Homescreenstate(this.currentpage, this.listpage);
  @override
  List<Object?> get props => [];
}

class IntialHomescreen extends Homescreenstate {
   const IntialHomescreen(super.counter, super.listpage);
  @override
  List<Object?> get props => [currentpage,listpage];
}
class Currentpage extends Homescreenstate {
   const Currentpage(super.counter, super.listpage);
  @override
  List<Object?> get props => [currentpage,listpage];
}



sealed class  WorkerHomepagestate extends Equatable {
  final bool avelable;
  
   const WorkerHomepagestate(this.avelable );
  @override
  List<Object?> get props => [];
}

class IntialWorkerHomepage extends WorkerHomepagestate {
   const IntialWorkerHomepage(super.avelable, );
  @override
  List<Object?> get props => [avelable];
}
class ChangeWorkerStatus extends WorkerHomepagestate {
   const ChangeWorkerStatus(super.avelable, );
  @override
  List<Object?> get props => [avelable];
}




sealed class Onboardingstate extends Equatable {
  final int currentPage;
  final PageController pageController;
   const Onboardingstate(this.currentPage,  this.pageController);
  @override
  List<Object?> get props => [];
}

class IntialOnboarding extends Onboardingstate {
   const IntialOnboarding(super.currentPage,  super.pageController);
  @override
  List<Object?> get props => [currentPage,pageController];
}

class Curruntpage extends Onboardingstate {
   const Curruntpage(super.currentPage,super.pageController);
  @override
  List<Object?> get props => [currentPage,pageController];
}
