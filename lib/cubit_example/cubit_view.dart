import 'package:flutter_features/cubit_example/example_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitExampleView extends StatelessWidget {
  CubitExampleView({super.key});

  final ExampleCubit cubit = ExampleCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Example")),
      body: BlocBuilder<ExampleCubit, ExampleState>(
        bloc: cubit,
        buildWhen: ((previous, current) => previous.text != current.text),
        builder: (context, state) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onChanged: (value) => cubit.changeText(value),
                ),
                Text(state.text)
              ]);
        },
      ),
    );
  }
}
