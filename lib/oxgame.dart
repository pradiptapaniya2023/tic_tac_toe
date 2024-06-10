import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Final_OXgame extends StatefulWidget {
  const Final_OXgame({super.key});

  @override
  State<Final_OXgame> createState() => _Final_OXgameState();
}

class _Final_OXgameState extends State<Final_OXgame> {
  List<String> displayOX = ["", "", "", "", "", "", "", "", ""];
  bool firstTimeTap = true;
  var textfiledController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 50, 50, 30),
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        MyContanier(0),
                        MyContanier(1),
                        MyContanier(2)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        MyContanier(3),
                        MyContanier(4),
                        MyContanier(5)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        MyContanier(6),
                        MyContanier(7),
                        MyContanier(8)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 30),
            height: 50,
            width: 120,
            child: InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  "RESET",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 30),
            height: 50,
            width: 120,
            child: Center(
                child: TextField(
                  controller: textfiledController,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  readOnly: true,
                )
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
          )
        ],
      ),
    );
  }

  Widget MyContanier(int index) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black, width: 2)),
        child: InkWell(
          onTap: () {
            onTapDisplay(index);
          },
          child: Center(
            child: Text(
              displayOX[index],
              style: TextStyle(color: Colors.black54, fontSize: 75),
            ),
          ),
        ),
      ),
    );
  }


  void onTapDisplay(int index){
    setState(() {
      if(firstTimeTap && displayOX[index] == ''){
        displayOX[index] = "O";
      }
      else if (!firstTimeTap && displayOX[index] == ''){
        displayOX[index] = "X";
      }

      firstTimeTap = !firstTimeTap ;
    });
    chekWiner();
    resetBtn(index);
  }

  void chekWiner(){
    if (displayOX[0] == "O" && displayOX[3] == "O" && displayOX[6] == "O" ||
        displayOX[1] == "O" && displayOX[4] == "O" && displayOX[7] == "O" ||
        displayOX[2] == "O" && displayOX[5] == "O" && displayOX[8] == "O" ||
        displayOX[0] == "O" && displayOX[1] == "O" && displayOX[2] == "O" ||
        displayOX[3] == "O" && displayOX[4] == "O" && displayOX[5] == "O" ||
        displayOX[6] == "O" && displayOX[7] == "O" && displayOX[8] == "O" ||
        displayOX[0] == "O" && displayOX[4] == "O" && displayOX[8] == "O" ||
        displayOX[6] == "O" && displayOX[4] == "O" && displayOX[2] == "O") {
      setState(() {
        textfiledController.text = "Player < 0 > Wins !";
      });
    }else if (displayOX[0] == "X" && displayOX[3] == "X" && displayOX[6] == "X" ||
        displayOX[1] == "X" && displayOX[4] == "X" && displayOX[7] == "X" ||
        displayOX[2] == "X" && displayOX[5] == "X" && displayOX[8] == "X" ||
        displayOX[0] == "X" && displayOX[1] == "X" && displayOX[2] == "X" ||
        displayOX[3] == "X" && displayOX[4] == "X" && displayOX[5] == "X" ||
        displayOX[6] == "X" && displayOX[7] == "X" && displayOX[8] == "X" ||
        displayOX[0] == "X" && displayOX[4] == "X" && displayOX[8] == "X" ||
        displayOX[6] == "X" && displayOX[4] == "X" && displayOX[2] == "X") {
      setState(() {
        textfiledController.text = "Player < X > Wins !";
      });
    }
  }

  void resetBtn(int index){
    setState(() {
      if(displayOX[index].isNotEmpty){
        displayOX[index] = '';
      }
    });
  }
}
