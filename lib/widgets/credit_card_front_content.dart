import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/credit_card_field.dart';
import 'package:flutterchallenge2/widgets/credit_card_number.dart';

class CreditCardFrontContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CreditCardNumber('XXXX XXXX XXXX XXXX'),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CreditCardField(
                  'CARDHOLDER NAME',
                  'NAME SURNAME',
                ),
                CreditCardField(
                  'VALID THRU',
                  'MM/YY',
                  alignment: CrossAxisAlignment.end,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
