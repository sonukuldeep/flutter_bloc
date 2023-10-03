import 'package:bloc_tute/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_tute/blocs/multiple_bloc/multiple_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc tutorial"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                "${state.counter}",
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrementEvent());
                    BlocProvider.of<MultipleBloc>(context)
                        .add(MultiplyByTwoEvent());
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(CounterDecrementEvent());
                    context.read<MultipleBloc>().add(MultiplyByThreeEvent());
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
          BlocBuilder<MultipleBloc, MultipleState>(
            builder: (context, state) {
              return Text("Multiple ${state.value}");
            },
          )
        ],
      ),
    );
  }
}
