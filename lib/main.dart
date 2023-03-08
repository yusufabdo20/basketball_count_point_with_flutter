import 'package:flutter/material.dart';
import 'components.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counter2 = 0;
  int counter = 0;
  int team = 0;
  void addOnePoint(teem) {
    if (teem == 1) {
      setState(() {
        counter++;
      });
    } else {
      setState(() {
        counter2++;
      });
    }
  }

  void addTwoPoints(teem) {
    if (teem == 1) {
      setState(() {
        counter = counter + 2;
      });
    } else {
      setState(() {
        counter2 = counter2 + 2;
      });
    }
  }

  void addThreePoints(teem) {
    if (teem == 1) {
      setState(() {
        counter = counter + 3;
      });
    } else {
      setState(() {
        counter2 = counter2 + 3;
      });
    }
  }

  void resetPoints() {
    setState(() {
      counter = 0;
      counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                                    '$counter',
                                    style: counter < 99
                                        ? const TextStyle(
                                            fontSize: 120, color: Colors.white)
                                        : const TextStyle(
                                            fontSize: 80, color: Colors.white),
                                  ),
                                ],
                              ),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addOnePoint(1);
                                  },
                                  titleOfButton: "Add 1 point"),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addTwoPoints(1);
                                  },
                                  titleOfButton: "Add 2 point"),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addThreePoints(1);
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
                                    '$counter2',
                                    style: counter2 < 99
                                        ? const TextStyle(
                                            fontSize: 120, color: Colors.white)
                                        : const TextStyle(
                                            fontSize: 80, color: Colors.white),
                                  ),
                                ],
                              ),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addOnePoint(2);
                                  },
                                  titleOfButton: "Add 1 point"),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addTwoPoints(2);
                                  },
                                  titleOfButton: "Add 2 point"),
                              buildTextElevatedButton(
                                  onPressedFunction: () {
                                    addThreePoints(2);
                                  },
                                  titleOfButton: "Add 3 point")
                            ],
                          ),
                        ],
                      ),
                      buildTextElevatedButton(
                          onPressedFunction: resetPoints,
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
      ),
    );
  }
}
