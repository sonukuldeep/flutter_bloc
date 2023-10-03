import 'dart:math';

import 'package:bloc_tute/blocs/counter_bloc/counter_bloc.dart';
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
          BlocSelector<CounterBloc, CounterState, String>(
            selector: (state) {
              return "I'm manupulating value from the selector\nManupulated value ${state.counter + Random().nextInt(100)}\nReal value is ${state.counter}";
            },
            builder: (context, state) {
              return Text(
                state,
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
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
