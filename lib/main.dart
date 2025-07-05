import 'package:calculator/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    flex: 2,
                    child: Text(
                      userInput,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 52,
                          fontWeight: FontWeight.w300),
                    )),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              MyButton(
                                title: "7",
                                onPress: () {
                                  userInput += '7';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "8",
                                onPress: () {
                                  userInput += '8';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "9",
                                onPress: () {
                                  userInput += '9';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: "4",
                                onPress: () {
                                  userInput += '4';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "5",
                                onPress: () {
                                  userInput += '5';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "6",
                                onPress: () {
                                  userInput += '6';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: "1",
                                onPress: () {
                                  userInput += '1';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "2",
                                onPress: () {
                                  userInput += '2';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "3",
                                onPress: () {
                                  userInput += '3';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(
                                title: ".",
                                onPress: () {
                                  userInput += '.';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "0",
                                onPress: () {
                                  userInput += '0';
                                  setState(() {});
                                },
                              ),
                              MyButton(
                                title: "=",
                                onPress: () {
                                  userInput = userInput.replaceAll("x", '*');
                                  userInput = userInput.replaceAll("÷", '/');

                                  Parser p = Parser();
                                  ContextModel cm = ContextModel();
                                  Expression exp = p.parse(userInput);

                                  double eval =
                                      exp.evaluate(EvaluationType.REAL, cm);

                                  userInput = eval.toString();
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        MyButton(
                          title: "DEL",
                          color: Color.fromARGB(255, 37, 37, 37),
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                          height: 96,
                          textSize: 16,
                          textColor: Color(0xfffb8c00),
                          olp: () {
                            userInput = '';

                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: "÷",
                          color: Color.fromARGB(255, 37, 37, 37),
                          onPress: () {
                            userInput += '÷';
                            setState(() {});
                          },
                          height: 96,
                          textSize: 16,
                          textColor: Color(0xfffb8c00),
                        ),
                        MyButton(
                          title: "x",
                          color: Color.fromARGB(255, 37, 37, 37),
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                          height: 96,
                          textSize: 16,
                          textColor: Color(0xfffb8c00),
                        ),
                        MyButton(
                          title: "-",
                          color: Color.fromARGB(255, 37, 37, 37),
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                          height: 96,
                          textSize: 16,
                          textColor: Color(0xfffb8c00),
                        ),
                        MyButton(
                          title: "+",
                          color: Color.fromARGB(255, 37, 37, 37),
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                          height: 96,
                          textSize: 16,
                          textColor: Color(0xfffb8c00),
                        ),
                      ],
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
