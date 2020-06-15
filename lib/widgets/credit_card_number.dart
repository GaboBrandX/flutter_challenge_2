import 'package:flutter/material.dart';

class CreditCardNumber extends StatelessWidget {
  final String placeholder;

  CreditCardNumber(this.placeholder);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          placeholder,
          style: TextStyle(
            color: Color(0xFF959595),
            fontSize: 26.0,
            fontFamily: 'Larabiefont',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}