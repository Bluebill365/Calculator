import 'package:flutter/material.dart';

class LogicHand extends StatefulWidget {
  const LogicHand({super.key});

  @override
  State<LogicHand> createState() => _LogicHandState();
}

class _LogicHandState extends State<LogicHand> {
  @override
  //Variable handling
  double number1 = 0.0;
  double number2 = 0.0;
  var input = "";
  var output = "";
  var operator = "";
  var hideout = false;
  var outputsize = 3.0;

  onButtonClick(value) {
    if (value == AC) {
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
        var finalValue = exp.evaluate(EvaluateType.REAL, cm);
        output = finalValue.toString();
        if (output.endsWith(".0")) {
          output = output.substring(0, output.length - 2);
        }
        input = output;
        hideout = true;
        outputsize = 52;
      }
    } else {
      input = input + value;
      hideout = false;
      outputsize = 32;
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
