abstract class OrderStates {}

class CounterInitialState extends OrderStates {}

class CounterMinusState extends OrderStates {
  final int counter;
  CounterMinusState(this.counter);
}

class CounterPlusState extends OrderStates {
  final int counter;
  CounterPlusState(this.counter);
}
