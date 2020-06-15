import 'package:flutter/material.dart';

class CreditCardField extends StatelessWidget {
  final String fieldName;
  final String placeholder;
  final CrossAxisAlignment alignment;

  CreditCardField(
      this.fieldName,
      this.placeholder, {
        this.alignment = CrossAxisAlignment.start,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: alignment,
      children: <Widget>[
        Text(
          fieldName,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 12.0,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          placeholder,
          style: TextStyle(
            color: Color(0xFF959595),
            fontFamily: 'Larabiefont',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}