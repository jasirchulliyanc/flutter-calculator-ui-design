// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'MyButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (BuildContext context, index) {
                        if (index == 0) {
                          return MyButton(
                            color: Colors.green,
                            buttonText: buttons[index],
                            TextColor: Colors.white,
                          );
                        } else if (index == 1) {
                          return MyButton(
                            color: Colors.redAccent,
                            buttonText: buttons[index],
                            TextColor: Colors.white,
                          );
                        } else {
                          return MyButton(
                              color: isOperator(buttons[index])
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[50],
                              buttonText: buttons[index],
                              TextColor: isOperator(buttons[index])
                                  ? Colors.white
                                  : Colors.deepPurple);
                        }
                      })))
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == 'x' || x == '+' || x == '-' || x == '=' || x == '/') {
      return true;
    }
    return false;
  }
}
