import 'package:flutter/material.dart';

class CreditCardSignatureLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: (MediaQuery.of(context).size.width / 13) / 7,
        ),
        Container(
          height: (MediaQuery.of(context).size.width / 13) / 7,
          width: double.infinity,
          color: Colors.white.withOpacity(0.3),
        ),
      ],
    );
  }
}