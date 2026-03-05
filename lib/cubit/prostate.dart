import 'package:equatable/equatable.dart';

sealed class Homestate extends Equatable {
  final int counter;

  const Homestate(this.counter);
  @override
  List<Object?> get props => [];
}

class IntialCounter extends Homestate {
  const IntialCounter(super.counter);
  @override
  List<Object?> get props => [counter];
}

class IncrementCounter extends Homestate {
  const IncrementCounter(super.counter);
  @override
  List<Object?> get props => [counter];
}

class DecrementCounter extends Homestate {
  const DecrementCounter(super.counter);
  @override
  List<Object?> get props => [counter];
}

sealed class Onboardingstate extends Equatable {
  final int currentPage;

  const Onboardingstate(this.currentPage);
  @override
  List<Object?> get props => [];
}

class IntialOnboarding extends Onboardingstate {
  const IntialOnboarding(super.currentPage);
  @override
  List<Object?> get props => [currentPage];
}

class Curruntpage extends Onboardingstate {
  const Curruntpage(super.currentPage);
  @override
  List<Object?> get props => [currentPage];
}
