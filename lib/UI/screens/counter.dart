import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workshop/bloc/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = CounterCubit.get(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  cubit.counter.toString(),
                  style: const TextStyle(fontSize: 70),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    cubit.increaseCounter();
                  },
                  icon: const Icon(Icons.add),
                  color: Colors.indigo,
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {
                    cubit.decreaseCounter();
                  },
                  icon: const Icon(Icons.minimize),
                  color: Colors.indigo,
                  iconSize: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
