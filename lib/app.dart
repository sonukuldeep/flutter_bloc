import 'package:bloc_tute/aap_view.dart';
import 'package:bloc_tute/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_tute/blocs/internet_cubit/internet_cubit.dart';
import 'package:bloc_tute/blocs/multiple_bloc/multiple_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
        BlocProvider<MultipleBloc>(
          create: (context) => MultipleBloc(),
        ),
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppView(),
      ),
    );
  }
}
