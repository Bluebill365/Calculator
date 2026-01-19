import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../coloring/theme.dart';

class LogicHand extends StatefulWidget {
  const LogicHand({super.key});

  @override
  State<LogicHand> createState() => _LogicHandState();
}

class _LogicHandState extends State<LogicHand> {
  //Variable handling
  double number1 = 0.0;
  double number2 = 0.0;
  var input = "";
  var output = "";
  var operator = "";
  var hideout = false;
  var outputSize = 3.0;

  onButtonClick(value) {
    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userInput = input.replaceAll("x", "*");
        Parser p = Parser();
        Expression exp = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = exp.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith(".0")) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
        hideout = true;
        outputSize = 52;
      }
    } else {
      input = input + value;
      hideout = false;
      outputSize = 32;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hideout ? "" : input,
                    style: TextStyle(fontSize: 45, color: Colors.black87),
                  ),
                  SizedBox(height: 30),
                  Text(
                    output,
                    style: TextStyle(
                      fontSize: outputSize,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Row(
            children: [
              buildButton("AC"),
              buildButton("<"),
              buildButton("%"),
              buildButton("/"),
            ],
          ),
          Row(
            children: [
              buildButton("7"),
              buildButton("8"),
              buildButton("9"),
              buildButton("x"),
            ],
          ),
          Row(
            children: [
              buildButton("4"),
              buildButton("5"),
              buildButton("6"),
              buildButton("-"),
            ],
          ),
          Row(
            children: [
              buildButton("1"),
              buildButton("2"),
              buildButton("3"),
              buildButton("+"),
            ],
          ),
          Row(children: [buildButton("0"), buildButton("."), buildButton("=")]),
        ],
      ),
    );
  }

  Widget buildButton(
    String text, {
    Color tColor = Colors.white,
    Color buttonBgColor = const Color(0xFF2D2D2D),
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(22),
            backgroundColor: buttonBgColor,
          ),
          onPressed: () => onButtonClick(text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: tColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
