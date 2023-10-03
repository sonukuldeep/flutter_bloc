import 'package:bloc/bloc.dart';

part 'multiple_event.dart';
part 'multiple_state.dart';

class MultipleBloc extends Bloc<MultipleEvent, MultipleState> {
  MultipleBloc() : super(MultipleInitial()) {
    on<MultiplyByTwoEvent>(
        (event, emit) => emit(MultiplyByTwoState(state.value * 2)));
    on<MultiplyByThreeEvent>(
        (event, emit) => emit(MultiplyByThreeState(state.value * 3)));
  }
}
