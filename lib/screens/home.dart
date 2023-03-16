import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components.dart';
import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Points Counter'),

            // backgroundColor: Colors.cyan,
            elevation: 0,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(bottom: 0, left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(
                          "Basketball\nPoints Counter",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "Team 1",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    ),
                                    Text(
                                      '${CounterCubit.get(context).counterA}',
                                      style: 0 < 99
                                          ? const TextStyle(
                                              fontSize: 120,
                                              color: Colors.white)
                                          : const TextStyle(
                                              fontSize: 80,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointA(1);
                                    },
                                    titleOfButton: "Add 1 point"),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointA(2);
                                    },
                                    titleOfButton: "Add 2 point"),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointA(3);
                                    },
                                    titleOfButton: "Add 3 point")
                              ],
                            ),
                            const SizedBox(
                              height: 400,
                              child: VerticalDivider(
                                indent: 25,
                                color: Colors.white,
                                thickness: 2,
                                endIndent: 15,
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "Team 2",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                    ),
                                    Text(
                                      '${CounterCubit.get(context).counterB}',
                                      style: 0 < 99
                                          ? const TextStyle(
                                              fontSize: 120,
                                              color: Colors.white)
                                          : const TextStyle(
                                              fontSize: 80,
                                              color: Colors.white),
                                    ),
                                  ],
                                ),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointB(1);
                                    },
                                    titleOfButton: "Add 1 point"),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointB(2);
                                    },
                                    titleOfButton: "Add 2 point"),
                                buildTextElevatedButton(
                                    onPressedFunction: () {
                                      CounterCubit.get(context).addPointB(3);
                                    },
                                    titleOfButton: "Add 3 point")
                              ],
                            ),
                          ],
                        ),
                        buildTextElevatedButton(
                            onPressedFunction: (() {
                              CounterCubit.get(context).resetPoints();
                            }),
                            titleOfButton: "Reset"),
                        const Expanded(child: SizedBox()),
                        const Text("This App Developed by Yusuf Abdulfattah ",
                            style: TextStyle(color: Colors.white38))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
