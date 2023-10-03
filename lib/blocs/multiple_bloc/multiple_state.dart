part of 'multiple_bloc.dart';

sealed class MultipleState {
  int value;
  MultipleState({required this.value});
}

final class MultipleInitial extends MultipleState {
  MultipleInitial() : super(value: 1);
}

final class MultiplyByTwoState extends MultipleState {
  MultiplyByTwoState(int newValue) : super(value: newValue);
}

final class MultiplyByThreeState extends MultipleState {
  MultiplyByThreeState(int newValue) : super(value: newValue);
}
