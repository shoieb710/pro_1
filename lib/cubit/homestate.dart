class Homestate {

  final int counter ; 
  Homestate(this.counter);
}

class IncrementCounter extends Homestate{
  IncrementCounter(super.counter);
}
class DecrementCounter extends Homestate{
  DecrementCounter(super.counter);
}