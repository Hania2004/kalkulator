import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () {
        calculate(btnText);
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 70), backgroundColor: btnColor,
        shape: const CircleBorder(),
      ),
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 25,
          color: txtColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("C", Colors.grey, Colors.black),
                numButton("+/-", Colors.grey, Colors.black),
                numButton("%", Colors.grey, Colors.black),
                numButton("/", Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("7", (Colors.blueGrey[900])!, Colors.white),
                numButton("8", (Colors.blueGrey[900])!, Colors.white),
                numButton("9", (Colors.blueGrey[900])!, Colors.white),
                numButton("x", Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("4", (Colors.blueGrey[900])!, Colors.white),
                numButton("5", (Colors.blueGrey[900])!, Colors.white),
                numButton("6", (Colors.blueGrey[900])!, Colors.white),
                numButton("-", Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("1", (Colors.blueGrey[900])!, Colors.white),
                numButton("2", (Colors.blueGrey[900])!, Colors.white),
                numButton("3", (Colors.blueGrey[900])!, Colors.white),
                numButton("+", Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), backgroundColor: (Colors.blueGrey[900])!,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                numButton(".", (Colors.blueGrey[900])!, Colors.white),
                numButton("=", Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  int firstNumber = 0;
  int secondNumber = 0;
  String result = "";
  String text = "";
  String operation = "";

  void calculate(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      firstNumber = 0;
      secondNumber = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      firstNumber = int.parse(text);
      result = "";
      operation = btnText;
    } else if (btnText == "=") {
      secondNumber = int.parse(text);
      if (operation == "+") {
        result = (firstNumber + secondNumber).toString();
      }
      if (operation == "-") {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == "x") {
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == "/") {
        result = (firstNumber ~/ secondNumber).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }
    setState(() {
      text = result;
    });
  }
}
