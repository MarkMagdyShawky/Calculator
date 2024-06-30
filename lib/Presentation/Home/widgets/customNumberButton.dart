import 'package:calculator/core/resourse/colorManager.dart';
import 'package:flutter/material.dart';

class CustomNumberButton extends StatelessWidget {
  final String number;
  final Color btnColor;
  const CustomNumberButton({super.key, required this.number, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 70,
        width: 70,
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            number,
            style: TextStyle(fontSize: 23),
          ),
          color: btnColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          elevation: 0,
          textColor: kSecondaryColor,
        ),
      ),
    );
  }
}