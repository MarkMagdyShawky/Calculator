// ignore_for_file: prefer_const_constructors

import 'package:calculator/Presentation/Home/widgets/customNumberButton.dart';
import 'package:calculator/core/resourse/colorManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: kFourthColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomNumberButton(number: 'AC', btnColor: kThirdColor),
              CustomNumberButton(number: 'c', btnColor: kThirdColor),
              CustomNumberButton(number: '%', btnColor: kThirdColor),
              CustomNumberButton(number: '/', btnColor: kThirdColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomNumberButton(number: '7', btnColor: kPrimaryColor),
              CustomNumberButton(number: '8', btnColor: kPrimaryColor),
              CustomNumberButton(number: '9', btnColor: kPrimaryColor),
              CustomNumberButton(number: 'x', btnColor: kThirdColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomNumberButton(number: '4', btnColor: kPrimaryColor),
              CustomNumberButton(number: '5', btnColor: kPrimaryColor),
              CustomNumberButton(number: '6', btnColor: kPrimaryColor),
              CustomNumberButton(number: '-', btnColor: kThirdColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomNumberButton(number: '1', btnColor: kPrimaryColor),
              CustomNumberButton(number: '2', btnColor: kPrimaryColor),
              CustomNumberButton(number: '3', btnColor: kPrimaryColor),
              CustomNumberButton(number: '+', btnColor: kThirdColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomNumberButton(number: '+/-', btnColor: kThirdColor),
              CustomNumberButton(number: '0', btnColor: kPrimaryColor),
              CustomNumberButton(number: '00', btnColor: kPrimaryColor),
              CustomNumberButton(number: '=', btnColor: kThirdColor),
            ],
          ),
        ],
      )),
    );
  }
}
