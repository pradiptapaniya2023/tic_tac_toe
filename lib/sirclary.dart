import 'dart:math';

import 'package:flutter/material.dart';

class MyPuzzle extends StatefulWidget {
  const MyPuzzle({super.key});

  @override
  State<MyPuzzle> createState() => _MyPuzzleState();
}

class _MyPuzzleState extends State<MyPuzzle> {
  List list = ["", "", "", "", "", "", "", "", ""];
  int dav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // 9
                      // 5
                      // 4
                      if (list[0] == "") {
                        list[0] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }
                    },
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                          child: Text(
                        list[0],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (list[1] == "") {
                        list[1] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }

                    },
                    child: Container(
                      color: Colors.green,
                      child: Center(
                          child: Text(
                        list[1],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (list[2] == "") {
                        list[2] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }

                    },
                    child: Container(
                      color: Colors.red,
                      child: Center(
                          child: Text(
                        list[2],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {

                      if (list[3] == "") {
                        list[3] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }

                    },
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                          child: Text(
                        list[3],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (list[4] == "") {
                        list[4] = "X";
                        dav++;

                        if (dav <= 4) {
                          while (true) {

                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              await Future.delayed(Duration(seconds: 5));

                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }
                      setState(() {

                      });

                    },
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                          child: Text(
                        list[4],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (list[5] == "") {
                        list[5] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              await Future.delayed(Duration(seconds: 5));

                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }
                      setState(() {

                      });

                    },
                    child: Container(
                      color: Colors.pink,
                      child: Center(
                          child: Text(
                        list[5],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (list[6] == "") {
                        list[6] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              await Future.delayed(Duration(seconds: 5));

                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }
                      setState(() {

                      });

                    },
                    child: Container(
                      color: Colors.orange,
                      child: Center(
                          child: Text(
                        list[6],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (list[7] == "") {
                        list[7] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }

                    },
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        list[7],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (list[8] == "") {
                        list[8] = "X";
                        dav++;
                        setState(() {});
                        if (dav <= 4) {
                          while (true) {
                            int a = Random().nextInt(8); // 0
                            print("===${a}");

                            if (list[a] == "") {
                              list[a] = "O";
                              break;
                            }
                          }
                        }
                      }

                    },
                    child: Container(
                      color: Colors.red,
                      child: Center(
                          child: Text(
                        list[8],
                        style: TextStyle(fontSize: 50),
                      )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
