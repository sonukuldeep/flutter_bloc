part of 'counter_bloc.dart';

sealed class CounterState {
  int counter;
  CounterState({required this.counter});
}

final class CounterInitial extends CounterState {
  CounterInitial() : super(counter: 0);
}

final class CounterIncrementState extends CounterState {
  CounterIncrementState(int incrementCounter)
      : super(counter: incrementCounter);
}

final class CounterDecrementState extends CounterState {
  CounterDecrementState(int decrementCounter)
      : super(counter: decrementCounter);
}
