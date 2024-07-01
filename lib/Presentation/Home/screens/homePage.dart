// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:calculator/Presentation/Home/widgets/customNumberButton.dart';
import 'package:calculator/core/resourse/colorManager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double firstNumber = 0;
  double secondNumber = 0;
  String textToDisplay = '';
  String result = '';
  String history = '';
  String operation = '';

  clickAction(buttonValue) {
    if (buttonValue == 'AC') {
      firstNumber = 0;
      secondNumber = 0;
      textToDisplay = '';
      result = '';
      history = '';
      operation = '';
    } else if (buttonValue == 'C') {
      textToDisplay = '';
      result = '';
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == '/' ||
        buttonValue == 'X' ||
        buttonValue == '%') {
      firstNumber = double.parse(textToDisplay);
      result = '';
      operation = buttonValue;
    } else if (buttonValue == '=') {
      secondNumber = double.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNumber + secondNumber).toString();
      }
      if (operation == '-') {
        result = (firstNumber - secondNumber).toString();
      }
      if (operation == 'X') {
        result = (firstNumber * secondNumber).toString();
      }
      if (operation == '/') {
        result = (firstNumber / secondNumber).toString();
      }
      if (operation == '%') {
        result = (firstNumber % secondNumber).toString();
      }
      history = firstNumber.toString() + operation.toString() + secondNumber.toString();
    } else if (buttonValue == '+/-') {
      result = (double.parse(textToDisplay) * -1).toString();
    } else {
      result = textToDisplay + buttonValue;
    }

    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFourthColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                history,
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                textToDisplay,
                style: TextStyle(fontSize: 35),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Color.fromARGB(81, 158, 158, 158),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomNumberButton(
                    number: 'AC', btnColor: kThirdColor, callback: clickAction),
                CustomNumberButton(
                    number: 'C', btnColor: kThirdColor, callback: clickAction),
                CustomNumberButton(
                    number: '%', btnColor: kThirdColor, callback: clickAction),
                CustomNumberButton(
                    number: '/', btnColor: kThirdColor, callback: clickAction),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomNumberButton(
                    number: '7', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '8', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '9', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: 'X', btnColor: kThirdColor, callback: clickAction),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomNumberButton(
                    number: '4', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '5', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '6', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '-', btnColor: kThirdColor, callback: clickAction),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomNumberButton(
                    number: '1', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '2', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '3', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '+', btnColor: kThirdColor, callback: clickAction),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomNumberButton(
                    number: '+/-', btnColor: kThirdColor, callback: clickAction),
                CustomNumberButton(
                    number: '0', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '00', btnColor: kPrimaryColor, callback: clickAction),
                CustomNumberButton(
                    number: '=', btnColor: kThirdColor, callback: clickAction),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
