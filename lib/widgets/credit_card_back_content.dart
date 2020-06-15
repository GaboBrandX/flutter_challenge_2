import 'package:flutter/material.dart';
import 'package:flutterchallenge2/widgets/credit_card_magnetic_bar.dart';
import 'package:flutterchallenge2/widgets/credit_card_signature_field.dart';

class CreditCardBackContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CreditCardMagneticBar(),
        CreditCardSignatureField(),
      ],
    );
  }
}